// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInferenceClassification()
{
    NSArray* _overrides;
}
@end

@implementation MSGraphInferenceClassification

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.inferenceClassification";
    }
    return self;
}
- (NSArray*) overrides
{
    if(!_overrides){
        
    NSMutableArray *overridesResult = [NSMutableArray array];
    NSArray *overrides = self.dictionary[@"overrides"];

    if ([overrides isKindOfClass:[NSArray class]]){
        for (id tempInferenceClassificationOverride in overrides){
            [overridesResult addObject:tempInferenceClassificationOverride];
        }
    }

    _overrides = overridesResult;
        
    }
    return _overrides;
}

- (void) setOverrides: (NSArray*) val
{
    _overrides = val;
    self.dictionary[@"overrides"] = val;
}


@end
