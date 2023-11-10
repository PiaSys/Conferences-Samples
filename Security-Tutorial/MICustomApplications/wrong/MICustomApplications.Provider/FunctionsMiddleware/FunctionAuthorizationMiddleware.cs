using System.IdentityModel.Tokens.Jwt;
using System.Net;
using System.Text.Json;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Middleware;
using Microsoft.IdentityModel.Tokens;
using Microsoft.IdentityModel.Protocols;
using Microsoft.IdentityModel.Protocols.OpenIdConnect;
using Microsoft.Extensions.Configuration;
using System.Security.Claims;
using System.Reflection;
using System.Threading.Tasks;

namespace MICustomApplications.Provider
{
    public class FunctionAuthorizationMiddleware : IFunctionsWorkerMiddleware
    {
        public async Task Invoke(
            FunctionContext context,
            FunctionExecutionDelegate next)
        {
            // Get the consumer's princiapl from the function context
            var principalFeature = context.Features.Get<JwtPrincipalFeature>();

            if (principalFeature != null)
            {
                // Get the invoked function method
                var targetMethod = context.GetTargetFunctionMethod();

                // Get the FunctionAuthorize attribute, if any
                var functionAuthorizeAttribute = targetMethod.GetCustomAttribute<FunctionAuthorizeAttribute>();

                // In case there is the FunctionAuthorize attribute
                // let's check authorization based on the accepted scopes
                if (functionAuthorizeAttribute != null && !AuthorizePrincipal(context, 
                    principalFeature.Principal, functionAuthorizeAttribute.Scopes,
                    functionAuthorizeAttribute.Roles))
                {
                    context.SetHttpResponseStatusCode(HttpStatusCode.Forbidden);
                    return;
                }

                // If the FunctionAuthorize attribute requires me to run on-behalf-of the user
                if (functionAuthorizeAttribute != null && functionAuthorizeAttribute.RunOnBehalfOf)
                {
                    // let's get the OBO token
                    var tenantId = principalFeature.Principal.FindFirst(c => c.Type == ClaimTypes.TenantIdClaimType);
                    if (tenantId != null)
                    {
                        var oboToken = await SecurityHelper.GetOboToken(principalFeature.AccessToken, tenantId.Value);
                        // and update the principal feature
                        var updatedPrincipalFeature = new JwtPrincipalFeature(principalFeature.Principal, principalFeature.AccessToken, oboToken); 
                        context.Features.Set<JwtPrincipalFeature>(updatedPrincipalFeature);
                    }
                }
            }

            await next(context);
        }

        private static bool AuthorizePrincipal(FunctionContext context, ClaimsPrincipal principal, string[] acceptedScopes, string[] acceptedRoles)
        {
            // This authorization implementation was made
            // for Azure AD. Your identity provider might differ.

            if (principal.HasClaim(c => c.Type == ClaimTypes.ScopeClaimType))
            {
                // Request made with delegated permissions, check scopes and user roles
                return AuthorizeDelegatedPermissions(context, principal, acceptedScopes);
            }
            else if (principal.HasClaim(c => c.Type == ClaimTypes.RoleClaimType))
            {
                // Request made with delegated permissions, check scopes and user roles
                return AuthorizeApplicationPermissions(context, principal, acceptedRoles);
            }
            else
            {
                // If we don't have the scope claim, we cannot authorize the request
                return false;
            }
        }

        private static bool AuthorizeDelegatedPermissions(FunctionContext context, ClaimsPrincipal principal, string[] acceptedScopes)
        {
            // Scopes are stored in a single claim, space-separated
            var callerScopes = (principal.FindFirst(ClaimTypes.ScopeClaimType)?.Value ?? "")
                .Split(' ', StringSplitOptions.RemoveEmptyEntries);
            var callerHasAcceptedScopes = callerScopes.Any(cs => acceptedScopes.Contains(cs));

            return callerHasAcceptedScopes;
        }

        private static bool AuthorizeApplicationPermissions(FunctionContext context, ClaimsPrincipal principal, string[] acceptedRoles)
        {
            // Scopes are stored in a single claim, space-separated
            var callerRoles = (principal.FindFirst(ClaimTypes.RoleClaimType)?.Value ?? "")
                .Split(' ', StringSplitOptions.RemoveEmptyEntries);
            var callerHasAcceptedRoles = callerRoles.Any(cs => acceptedRoles.Contains(cs));

            return callerHasAcceptedRoles;
        }
    }
}