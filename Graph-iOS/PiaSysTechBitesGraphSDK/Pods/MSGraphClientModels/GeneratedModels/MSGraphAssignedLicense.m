// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAssignedLicense()
{
    NSArray* _disabledPlans;
    NSString* _skuId;
}
@end

@implementation MSGraphAssignedLicense

- (NSArray*) disabledPlans
{
    return self.dictionary[@"disabledPlans"];
}

- (void) setDisabledPlans: (NSArray*) val
{
    self.dictionary[@"disabledPlans"] = val;
}

- (NSString*) skuId
{
    if([[NSNull null] isEqual:self.dictionary[@"skuId"]])
    {
        return nil;
    }   
    return self.dictionary[@"skuId"];
}

- (void) setSkuId: (NSString*) val
{
    self.dictionary[@"skuId"] = val;
}

@end
