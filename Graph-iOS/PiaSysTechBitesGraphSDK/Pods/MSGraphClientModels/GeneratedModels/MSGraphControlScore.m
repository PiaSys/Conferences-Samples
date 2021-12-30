// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphControlScore()
{
    NSString* _controlCategory;
    NSString* _controlName;
    NSString* _controlScoreDescription;
    double _score;
}
@end

@implementation MSGraphControlScore

- (NSString*) controlCategory
{
    if([[NSNull null] isEqual:self.dictionary[@"controlCategory"]])
    {
        return nil;
    }   
    return self.dictionary[@"controlCategory"];
}

- (void) setControlCategory: (NSString*) val
{
    self.dictionary[@"controlCategory"] = val;
}

- (NSString*) controlName
{
    if([[NSNull null] isEqual:self.dictionary[@"controlName"]])
    {
        return nil;
    }   
    return self.dictionary[@"controlName"];
}

- (void) setControlName: (NSString*) val
{
    self.dictionary[@"controlName"] = val;
}

- (NSString*) controlScoreDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setControlScoreDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (double) score
{
    _score = [self.dictionary[@"score"] floatValue];
    return _score;
}

- (void) setScore: (double) val
{
    _score = val;
    self.dictionary[@"score"] = @(val);
}

@end
