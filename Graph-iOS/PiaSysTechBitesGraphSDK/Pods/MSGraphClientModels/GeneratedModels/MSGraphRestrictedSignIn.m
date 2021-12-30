// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRestrictedSignIn()
{
    NSString* _targetTenantId;
}
@end

@implementation MSGraphRestrictedSignIn

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.restrictedSignIn";
    }
    return self;
}
- (NSString*) targetTenantId
{
    if([[NSNull null] isEqual:self.dictionary[@"targetTenantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetTenantId"];
}

- (void) setTargetTenantId: (NSString*) val
{
    self.dictionary[@"targetTenantId"] = val;
}


@end
