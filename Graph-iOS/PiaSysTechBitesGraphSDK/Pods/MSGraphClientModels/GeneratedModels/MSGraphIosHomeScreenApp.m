// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosHomeScreenApp()
{
    NSString* _bundleID;
}
@end

@implementation MSGraphIosHomeScreenApp

- (NSString*) bundleID
{
    return self.dictionary[@"bundleID"];
}

- (void) setBundleID: (NSString*) val
{
    self.dictionary[@"bundleID"] = val;
}

@end
