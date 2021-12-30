// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceDetail()
{
    NSString* _deviceId;
    NSString* _displayName;
    NSString* _operatingSystem;
    NSString* _browser;
    BOOL _isCompliant;
    BOOL _isManaged;
    NSString* _trustType;
}
@end

@implementation MSGraphDeviceDetail

- (NSString*) deviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceId"];
}

- (void) setDeviceId: (NSString*) val
{
    self.dictionary[@"deviceId"] = val;
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

- (NSString*) operatingSystem
{
    if([[NSNull null] isEqual:self.dictionary[@"operatingSystem"]])
    {
        return nil;
    }   
    return self.dictionary[@"operatingSystem"];
}

- (void) setOperatingSystem: (NSString*) val
{
    self.dictionary[@"operatingSystem"] = val;
}

- (NSString*) browser
{
    if([[NSNull null] isEqual:self.dictionary[@"browser"]])
    {
        return nil;
    }   
    return self.dictionary[@"browser"];
}

- (void) setBrowser: (NSString*) val
{
    self.dictionary[@"browser"] = val;
}

- (BOOL) isCompliant
{
    _isCompliant = [self.dictionary[@"isCompliant"] boolValue];
    return _isCompliant;
}

- (void) setIsCompliant: (BOOL) val
{
    _isCompliant = val;
    self.dictionary[@"isCompliant"] = @(val);
}

- (BOOL) isManaged
{
    _isManaged = [self.dictionary[@"isManaged"] boolValue];
    return _isManaged;
}

- (void) setIsManaged: (BOOL) val
{
    _isManaged = val;
    self.dictionary[@"isManaged"] = @(val);
}

- (NSString*) trustType
{
    if([[NSNull null] isEqual:self.dictionary[@"trustType"]])
    {
        return nil;
    }   
    return self.dictionary[@"trustType"];
}

- (void) setTrustType: (NSString*) val
{
    self.dictionary[@"trustType"] = val;
}

@end
