// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAverageComparativeScore()
{
    double _averageScore;
    NSString* _basis;
}
@end

@implementation MSGraphAverageComparativeScore

- (double) averageScore
{
    _averageScore = [self.dictionary[@"averageScore"] floatValue];
    return _averageScore;
}

- (void) setAverageScore: (double) val
{
    _averageScore = val;
    self.dictionary[@"averageScore"] = @(val);
}

- (NSString*) basis
{
    if([[NSNull null] isEqual:self.dictionary[@"basis"]])
    {
        return nil;
    }   
    return self.dictionary[@"basis"];
}

- (void) setBasis: (NSString*) val
{
    self.dictionary[@"basis"] = val;
}

@end
