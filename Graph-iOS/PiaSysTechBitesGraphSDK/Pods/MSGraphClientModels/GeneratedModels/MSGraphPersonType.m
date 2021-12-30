// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPersonType()
{
    NSString* _class;
    NSString* _subclass;
}
@end

@implementation MSGraphPersonType

- (NSString*) class
{
    if([[NSNull null] isEqual:self.dictionary[@"class"]])
    {
        return nil;
    }   
    return self.dictionary[@"class"];
}

- (void) setClass: (NSString*) val
{
    self.dictionary[@"class"] = val;
}

- (NSString*) subclass
{
    if([[NSNull null] isEqual:self.dictionary[@"subclass"]])
    {
        return nil;
    }   
    return self.dictionary[@"subclass"];
}

- (void) setSubclass: (NSString*) val
{
    self.dictionary[@"subclass"] = val;
}

@end
