// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphKeyValue()
{
    NSString* _key;
    NSString* _value;
}
@end

@implementation MSGraphKeyValue

- (NSString*) key
{
    if([[NSNull null] isEqual:self.dictionary[@"key"]])
    {
        return nil;
    }   
    return self.dictionary[@"key"];
}

- (void) setKey: (NSString*) val
{
    self.dictionary[@"key"] = val;
}

- (NSString*) value
{
    if([[NSNull null] isEqual:self.dictionary[@"value"]])
    {
        return nil;
    }   
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

@end
