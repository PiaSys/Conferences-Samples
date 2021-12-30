// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosDeviceType()
{
    BOOL _iPad;
    BOOL _iPhoneAndIPod;
}
@end

@implementation MSGraphIosDeviceType

- (BOOL) iPad
{
    _iPad = [self.dictionary[@"iPad"] boolValue];
    return _iPad;
}

- (void) setIPad: (BOOL) val
{
    _iPad = val;
    self.dictionary[@"iPad"] = @(val);
}

- (BOOL) iPhoneAndIPod
{
    _iPhoneAndIPod = [self.dictionary[@"iPhoneAndIPod"] boolValue];
    return _iPhoneAndIPod;
}

- (void) setIPhoneAndIPod: (BOOL) val
{
    _iPhoneAndIPod = val;
    self.dictionary[@"iPhoneAndIPod"] = @(val);
}

@end
