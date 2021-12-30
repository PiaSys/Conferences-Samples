//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSRedirectHandlerOptions.h"

#define UPPER_LIMIT_FOR_REDIRECTS 20

@implementation MSRedirectHandlerOptions

@synthesize middlewareOptionsType;

- (instancetype)init
{
    return [self initWithMaxRedirects:5 andError:nil];
}

- (instancetype)initWithMaxRedirects:(NSInteger)maxRedirects andError:(NSError *__autoreleasing *)error
{
    self = [super init];
    if(self)
    {
        if(maxRedirects>UPPER_LIMIT_FOR_REDIRECTS)
        {
            NSDictionary *userInfo = @{
                                       NSLocalizedDescriptionKey: MSErrorOperationUnsuccessfulString,
                                       NSLocalizedFailureReasonErrorKey:[NSString stringWithFormat:MSErrorMaxRedirectsLimitExceededString,UPPER_LIMIT_FOR_REDIRECTS]
                                       };
            *error = [NSError errorWithDomain:MSErrorDomain code:-1 userInfo:userInfo];
            return nil;
        }
        _maxRedirects = maxRedirects;
        middlewareOptionsType = MSMiddlewareOptionsTypeRedirect;
    }
    return self;
}

@end
