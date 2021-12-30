// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidLobApp()
{
    NSString* _packageId;
    MSGraphAndroidMinimumOperatingSystem* _minimumSupportedOperatingSystem;
    NSString* _versionName;
    NSString* _versionCode;
}
@end

@implementation MSGraphAndroidLobApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.androidLobApp";
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

- (NSString*) versionName
{
    if([[NSNull null] isEqual:self.dictionary[@"versionName"]])
    {
        return nil;
    }   
    return self.dictionary[@"versionName"];
}

- (void) setVersionName: (NSString*) val
{
    self.dictionary[@"versionName"] = val;
}

- (NSString*) versionCode
{
    if([[NSNull null] isEqual:self.dictionary[@"versionCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"versionCode"];
}

- (void) setVersionCode: (NSString*) val
{
    self.dictionary[@"versionCode"] = val;
}


@end
