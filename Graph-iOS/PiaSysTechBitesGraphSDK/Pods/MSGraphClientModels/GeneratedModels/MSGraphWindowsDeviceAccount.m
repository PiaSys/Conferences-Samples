// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsDeviceAccount()
{
    NSString* _password;
}
@end

@implementation MSGraphWindowsDeviceAccount

- (NSString*) password
{
    if([[NSNull null] isEqual:self.dictionary[@"password"]])
    {
        return nil;
    }   
    return self.dictionary[@"password"];
}

- (void) setPassword: (NSString*) val
{
    self.dictionary[@"password"] = val;
}

@end
