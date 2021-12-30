// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsDeviceADAccount()
{
    NSString* _domainName;
    NSString* _userName;
}
@end

@implementation MSGraphWindowsDeviceADAccount

- (NSString*) domainName
{
    if([[NSNull null] isEqual:self.dictionary[@"domainName"]])
    {
        return nil;
    }   
    return self.dictionary[@"domainName"];
}

- (void) setDomainName: (NSString*) val
{
    self.dictionary[@"domainName"] = val;
}

- (NSString*) userName
{
    if([[NSNull null] isEqual:self.dictionary[@"userName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userName"];
}

- (void) setUserName: (NSString*) val
{
    self.dictionary[@"userName"] = val;
}

@end
