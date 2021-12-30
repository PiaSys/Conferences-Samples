//
//  AuthenticationManager.swift
//  PiaSysTechBitesGraphSDK
//
//  Created by Paolo Pialorsi on 30/12/21.
//

import Foundation
import MSAL
import MSGraphClientSDK

// Implement the MSAuthenticationProvider interface so
// this class can be used as an auth provider for the Graph SDK
class AuthenticationManager: NSObject, MSAuthenticationProvider {

    // Implement singleton pattern
    static let instance = AuthenticationManager()

    private let publicClient: MSALPublicClientApplication?
    private let tenantId: String
    private let appId: String
    private let graphScopes: Array<String>

    private override init() {

        // Get tenant ID, app ID, and scopes from AuthSettings.plist
        let bundle = Bundle.main
        let authConfigPath = bundle.path(forResource: "AuthSettings", ofType: "plist")!
        let authConfig = NSDictionary(contentsOfFile: authConfigPath)!

        self.tenantId = authConfig["TenantId"] as! String
        self.appId = authConfig["AppId"] as! String
        self.graphScopes = authConfig["GraphScopes"] as! Array<String>

        // Initialize the authority
        let authorityUrlString = "https://login.microsoftonline.com/\(self.tenantId)"

        guard let authorityURL = URL(string: authorityUrlString) else {
            print("Unable to create authority URL")
            self.publicClient = nil
            super.init()
            return
        }

        do {
            // Create the actual authority
            let authority = try MSALAADAuthority(url: authorityURL)

            // Create the MSAL client configuration
            let msalConfiguration = MSALPublicClientApplicationConfig(clientId: self.appId, redirectUri: nil, authority: authority)

            // Create the MSAL client
            try self.publicClient = MSALPublicClientApplication(configuration: msalConfiguration)

        } catch {
            print("Error creating MSAL public client: \(error)")
            self.publicClient = nil
        }

        super.init()
    }

    // Required function for the MSAuthenticationProvider interface
    func getAccessToken(for authProviderOptions: MSAuthenticationProviderOptions!, andCompletion completion: ((String?, Error?) -> Void)!) {
        getTokenSilently(completion: completion)
    }

    public func getTokenInteractively(parentView: UIViewController, completion: @escaping(_ accessToken: String?, Error?) -> Void) {
        let webParameters = MSALWebviewParameters(authPresentationViewController: parentView)
        let interactiveParameters = MSALInteractiveTokenParameters(scopes: self.graphScopes,
                                                                   webviewParameters: webParameters)
        interactiveParameters.promptType = MSALPromptType.selectAccount

        // Call acquireToken to open a browser so the user can sign in
        publicClient?.acquireToken(with: interactiveParameters, completionBlock: {
            (result: MSALResult?, error: Error?) in
            guard let tokenResult = result, error == nil else {
                print("Error getting token interactively: \(String(describing: error))")
                completion(nil, error)
                return
            }

            print("Got token interactively: \(tokenResult.accessToken)")
            completion(tokenResult.accessToken, nil)
        })
    }

    public func getTokenSilently(completion: @escaping(_ accessToken: String?, Error?) -> Void) {
        // Check if there is an account in the cache
        var userAccount: MSALAccount?

        do {
            userAccount = try publicClient?.allAccounts().first
        } catch {
            print("Error getting account: \(error)")
        }

        if (userAccount != nil) {
            // Attempt to get token silently
            let silentParameters = MSALSilentTokenParameters(scopes: self.graphScopes, account: userAccount!)
            publicClient?.acquireTokenSilent(with: silentParameters, completionBlock: {
                (result: MSALResult?, error: Error?) in
                guard let tokenResult = result, error == nil else {
                    print("Error getting token silently: \(String(describing: error))")
                    completion(nil, error)
                    return
                }

                print("Got token silently: \(tokenResult.accessToken)")
                completion(tokenResult.accessToken, nil)
            })
        } else {
            print("No account in cache")
            completion(nil, NSError(domain: "AuthenticationManager",
                                    code: MSALError.interactionRequired.rawValue, userInfo: nil))
        }
    }

    public func signOut() -> Void {
        do {
            // Remove all accounts from the cache
            let accounts = try publicClient?.allAccounts()

            try accounts!.forEach({
                (account: MSALAccount) in
                try publicClient?.remove(account)
            })
        } catch {
            print("Sign out error: \(String(describing: error))")
        }
    }
}
