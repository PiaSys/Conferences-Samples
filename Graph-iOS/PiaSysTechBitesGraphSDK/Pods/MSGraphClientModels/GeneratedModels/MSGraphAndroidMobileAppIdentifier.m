// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidMobileAppIdentifier()
{
    NSString* _packageId;
}
@end

@implementation MSGraphAndroidMobileAppIdentifier

- (NSString*) packageId
{
    return self.dictionary[@"packageId"];
}

- (void) setPackageId: (NSString*) val
{
    self.dictionary[@"packageId"] = val;
}

@end
