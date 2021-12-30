// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10NetworkProxyServer()
{
    NSString* _address;
    NSArray* _exceptions;
    BOOL _useForLocalAddresses;
}
@end

@implementation MSGraphWindows10NetworkProxyServer

- (NSString*) address
{
    return self.dictionary[@"address"];
}

- (void) setAddress: (NSString*) val
{
    self.dictionary[@"address"] = val;
}

- (NSArray*) exceptions
{
    if([[NSNull null] isEqual:self.dictionary[@"exceptions"]])
    {
        return nil;
    }   
    return self.dictionary[@"exceptions"];
}

- (void) setExceptions: (NSArray*) val
{
    self.dictionary[@"exceptions"] = val;
}

- (BOOL) useForLocalAddresses
{
    _useForLocalAddresses = [self.dictionary[@"useForLocalAddresses"] boolValue];
    return _useForLocalAddresses;
}

- (void) setUseForLocalAddresses: (BOOL) val
{
    _useForLocalAddresses = val;
    self.dictionary[@"useForLocalAddresses"] = @(val);
}

@end
