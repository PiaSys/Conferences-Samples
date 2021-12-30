// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCertificateBasedAuthConfiguration()
{
    NSArray* _certificateAuthorities;
}
@end

@implementation MSGraphCertificateBasedAuthConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.certificateBasedAuthConfiguration";
    }
    return self;
}
- (NSArray*) certificateAuthorities
{
    if(!_certificateAuthorities){
        
    NSMutableArray *certificateAuthoritiesResult = [NSMutableArray array];
    NSArray *certificateAuthorities = self.dictionary[@"certificateAuthorities"];

    if ([certificateAuthorities isKindOfClass:[NSArray class]]){
        for (id tempCertificateAuthority in certificateAuthorities){
            [certificateAuthoritiesResult addObject:tempCertificateAuthority];
        }
    }

    _certificateAuthorities = certificateAuthoritiesResult;
        
    }
    return _certificateAuthorities;
}

- (void) setCertificateAuthorities: (NSArray*) val
{
    _certificateAuthorities = val;
    self.dictionary[@"certificateAuthorities"] = val;
}


@end
