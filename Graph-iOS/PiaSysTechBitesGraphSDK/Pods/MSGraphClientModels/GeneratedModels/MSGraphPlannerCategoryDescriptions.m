// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerCategoryDescriptions()
{
    NSString* _category1;
    NSString* _category2;
    NSString* _category3;
    NSString* _category4;
    NSString* _category5;
    NSString* _category6;
}
@end

@implementation MSGraphPlannerCategoryDescriptions

- (NSString*) category1
{
    if([[NSNull null] isEqual:self.dictionary[@"category1"]])
    {
        return nil;
    }   
    return self.dictionary[@"category1"];
}

- (void) setCategory1: (NSString*) val
{
    self.dictionary[@"category1"] = val;
}

- (NSString*) category2
{
    if([[NSNull null] isEqual:self.dictionary[@"category2"]])
    {
        return nil;
    }   
    return self.dictionary[@"category2"];
}

- (void) setCategory2: (NSString*) val
{
    self.dictionary[@"category2"] = val;
}

- (NSString*) category3
{
    if([[NSNull null] isEqual:self.dictionary[@"category3"]])
    {
        return nil;
    }   
    return self.dictionary[@"category3"];
}

- (void) setCategory3: (NSString*) val
{
    self.dictionary[@"category3"] = val;
}

- (NSString*) category4
{
    if([[NSNull null] isEqual:self.dictionary[@"category4"]])
    {
        return nil;
    }   
    return self.dictionary[@"category4"];
}

- (void) setCategory4: (NSString*) val
{
    self.dictionary[@"category4"] = val;
}

- (NSString*) category5
{
    if([[NSNull null] isEqual:self.dictionary[@"category5"]])
    {
        return nil;
    }   
    return self.dictionary[@"category5"];
}

- (void) setCategory5: (NSString*) val
{
    self.dictionary[@"category5"] = val;
}

- (NSString*) category6
{
    if([[NSNull null] isEqual:self.dictionary[@"category6"]])
    {
        return nil;
    }   
    return self.dictionary[@"category6"];
}

- (void) setCategory6: (NSString*) val
{
    self.dictionary[@"category6"] = val;
}

@end
