// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDetectedApp()
{
    NSString* _displayName;
    NSString* _version;
    int64_t _sizeInByte;
    int32_t _deviceCount;
    NSArray* _managedDevices;
}
@end

@implementation MSGraphDetectedApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.detectedApp";
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

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}

- (int64_t) sizeInByte
{
    _sizeInByte = [self.dictionary[@"sizeInByte"] longLongValue];
    return _sizeInByte;
}

- (void) setSizeInByte: (int64_t) val
{
    _sizeInByte = val;
    self.dictionary[@"sizeInByte"] = @(val);
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

- (NSArray*) managedDevices
{
    if(!_managedDevices){
        
    NSMutableArray *managedDevicesResult = [NSMutableArray array];
    NSArray *managedDevices = self.dictionary[@"managedDevices"];

    if ([managedDevices isKindOfClass:[NSArray class]]){
        for (id tempManagedDevice in managedDevices){
            [managedDevicesResult addObject:tempManagedDevice];
        }
    }

    _managedDevices = managedDevicesResult;
        
    }
    return _managedDevices;
}

- (void) setManagedDevices: (NSArray*) val
{
    _managedDevices = val;
    self.dictionary[@"managedDevices"] = val;
}


@end
