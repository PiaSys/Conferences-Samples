// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphScoredEmailAddress()
{
    NSString* _address;
    double _relevanceScore;
    MSGraphSelectionLikelihoodInfo* _selectionLikelihood;
    NSString* _itemId;
}
@end

@implementation MSGraphScoredEmailAddress

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

- (double) relevanceScore
{
    _relevanceScore = [self.dictionary[@"relevanceScore"] floatValue];
    return _relevanceScore;
}

- (void) setRelevanceScore: (double) val
{
    _relevanceScore = val;
    self.dictionary[@"relevanceScore"] = @(val);
}

- (MSGraphSelectionLikelihoodInfo*) selectionLikelihood
{
    if(!_selectionLikelihood){
        _selectionLikelihood = [self.dictionary[@"selectionLikelihood"] toMSGraphSelectionLikelihoodInfo];
    }
    return _selectionLikelihood;
}

- (void) setSelectionLikelihood: (MSGraphSelectionLikelihoodInfo*) val
{
    _selectionLikelihood = val;
    self.dictionary[@"selectionLikelihood"] = val;
}

- (NSString*) itemId
{
    if([[NSNull null] isEqual:self.dictionary[@"itemId"]])
    {
        return nil;
    }   
    return self.dictionary[@"itemId"];
}

- (void) setItemId: (NSString*) val
{
    self.dictionary[@"itemId"] = val;
}

@end
