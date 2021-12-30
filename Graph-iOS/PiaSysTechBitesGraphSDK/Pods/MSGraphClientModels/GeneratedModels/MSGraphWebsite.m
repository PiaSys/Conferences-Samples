// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWebsite()
{
    MSGraphWebsiteType* _type;
    NSString* _address;
    NSString* _displayName;
}
@end

@implementation MSGraphWebsite

- (MSGraphWebsiteType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphWebsiteType];
    }
    return _type;
}

- (void) setType: (MSGraphWebsiteType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (NSString*) address
{
    if([[NSNull null] isEqual:self.dictionary[@"address"]])
    {
        return nil;
    }   
    return self.dictionary[@"address"];
}

- (void) setAddress: (NSString*) val
{
    self.dictionary[@"address"] = val;
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

@end
