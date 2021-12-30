// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionNetworkLearningSummary()
{
    NSString* _url;
    int32_t _deviceCount;
}
@end

@implementation MSGraphWindowsInformationProtectionNetworkLearningSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsInformationProtectionNetworkLearningSummary";
    }
    return self;
}
- (NSString*) url
{
    if([[NSNull null] isEqual:self.dictionary[@"url"]])
    {
        return nil;
    }   
    return self.dictionary[@"url"];
}

- (void) setUrl: (NSString*) val
{
    self.dictionary[@"url"] = val;
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
