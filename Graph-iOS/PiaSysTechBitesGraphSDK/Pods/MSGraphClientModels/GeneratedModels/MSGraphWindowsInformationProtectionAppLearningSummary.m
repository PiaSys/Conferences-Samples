// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionAppLearningSummary()
{
    NSString* _applicationName;
    MSGraphApplicationType* _applicationType;
    int32_t _deviceCount;
}
@end

@implementation MSGraphWindowsInformationProtectionAppLearningSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsInformationProtectionAppLearningSummary";
    }
    return self;
}
- (NSString*) applicationName
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationName"];
}

- (void) setApplicationName: (NSString*) val
{
    self.dictionary[@"applicationName"] = val;
}

- (MSGraphApplicationType*) applicationType
{
    if(!_applicationType){
        _applicationType = [self.dictionary[@"applicationType"] toMSGraphApplicationType];
    }
    return _applicationType;
}

- (void) setApplicationType: (MSGraphApplicationType*) val
{
    _applicationType = val;
    self.dictionary[@"applicationType"] = val;
}

- (int32_t) deviceCount
{
    _deviceCount = [self.dictionary[@"deviceCount"] intValue];
    return _deviceCount;
}

- (void) setDeviceCount: (int32_t) val
{
    _deviceCount = val;
    self.dictionary[@"deviceCount"] = @(val);
}


@end
