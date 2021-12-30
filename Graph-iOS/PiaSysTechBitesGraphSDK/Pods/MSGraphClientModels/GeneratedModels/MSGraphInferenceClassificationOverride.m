// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInferenceClassificationOverride()
{
    MSGraphInferenceClassificationType* _classifyAs;
    MSGraphEmailAddress* _senderEmailAddress;
}
@end

@implementation MSGraphInferenceClassificationOverride

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.inferenceClassificationOverride";
    }
    return self;
}
- (MSGraphInferenceClassificationType*) classifyAs
{
    if(!_classifyAs){
        _classifyAs = [self.dictionary[@"classifyAs"] toMSGraphInferenceClassificationType];
    }
    return _classifyAs;
}

- (void) setClassifyAs: (MSGraphInferenceClassificationType*) val
{
    _classifyAs = val;
    self.dictionary[@"classifyAs"] = val;
}

- (MSGraphEmailAddress*) senderEmailAddress
{
    if(!_senderEmailAddress){
        _senderEmailAddress = [[MSGraphEmailAddress alloc] initWithDictionary: self.dictionary[@"senderEmailAddress"]];
    }
    return _senderEmailAddress;
}

- (void) setSenderEmailAddress: (MSGraphEmailAddress*) val
{
    _senderEmailAddress = val;
    self.dictionary[@"senderEmailAddress"] = val;
}


@end
