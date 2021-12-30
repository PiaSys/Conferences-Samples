// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeZoneInformation()
{
    NSString* _alias;
    NSString* _displayName;
}
@end

@implementation MSGraphTimeZoneInformation

- (NSString*) alias
{
    if([[NSNull null] isEqual:self.dictionary[@"alias"]])
    {
        return nil;
    }   
    return self.dictionary[@"alias"];
}

- (void) setAlias: (NSString*) val
{
    self.dictionary[@"alias"] = val;
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
