// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceCategory()
{
    NSString* _displayName;
    NSString* _deviceCategoryDescription;
}
@end

@implementation MSGraphDeviceCategory

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceCategory";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) deviceCategoryDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDeviceCategoryDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}


@end
