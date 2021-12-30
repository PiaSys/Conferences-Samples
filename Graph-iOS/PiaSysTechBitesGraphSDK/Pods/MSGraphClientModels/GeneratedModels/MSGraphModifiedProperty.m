// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphModifiedProperty()
{
    NSString* _displayName;
    NSString* _oldValue;
    NSString* _newValue;
}
@end

@implementation MSGraphModifiedProperty

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

- (NSString*) oldValue
{
    if([[NSNull null] isEqual:self.dictionary[@"oldValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"oldValue"];
}

- (void) setOldValue: (NSString*) val
{
    self.dictionary[@"oldValue"] = val;
}

- (NSString*) getNewValue
{
    if([[NSNull null] isEqual:self.dictionary[@"newValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"newValue"];
}

- (void) setNewValue: (NSString*) val
{
    self.dictionary[@"newValue"] = val;
}

@end
