// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAndroidStoreApp()
{
    NSString* _packageId;
    NSString* _appStoreUrl;
    MSGraphAndroidMinimumOperatingSystem* _minimumSupportedOperatingSystem;
}
@end

@implementation MSGraphManagedAndroidStoreApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedAndroidStoreApp";
    }
    return self;
}
- (NSString*) packageId
{
    if([[NSNull null] isEqual:self.dictionary[@"packageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"packageId"];
}

- (void) setPackageId: (NSString*) val
{
    self.dictionary[@"packageId"] = val;
}

- (NSString*) appStoreUrl
{
    return self.dictionary[@"appStoreUrl"];
}

- (void) setAppStoreUrl: (NSString*) val
{
    self.dictionary[@"appStoreUrl"] = val;
}

- (MSGraphAndroidMinimumOperatingSystem*) minimumSupportedOperatingSystem
{
    if(!_minimumSupportedOperatingSystem){
        _minimumSupportedOperatingSystem = [[MSGraphAndroidMinimumOperatingSystem alloc] initWithDictionary: self.dictionary[@"minimumSupportedOperatingSystem"]];
    }
    return _minimumSupportedOperatingSystem;
}

- (void) setMinimumSupportedOperatingSystem: (MSGraphAndroidMinimumOperatingSystem*) val
{
    _minimumSupportedOperatingSystem = val;
    self.dictionary[@"minimumSupportedOperatingSystem"] = val;
}


@end
