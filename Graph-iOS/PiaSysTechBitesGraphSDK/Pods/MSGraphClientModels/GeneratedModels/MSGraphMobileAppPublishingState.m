// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMobileAppPublishingState.h"

@interface MSGraphMobileAppPublishingState () {
    MSGraphMobileAppPublishingStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMobileAppPublishingStateValue enumValue;
@end

@implementation MSGraphMobileAppPublishingState

+ (MSGraphMobileAppPublishingState*) notPublished {
    static MSGraphMobileAppPublishingState *_notPublished;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notPublished = [[MSGraphMobileAppPublishingState alloc] init];
        _notPublished.enumValue = MSGraphMobileAppPublishingStateNotPublished;
    });
    return _notPublished;
}
+ (MSGraphMobileAppPublishingState*) processing {
    static MSGraphMobileAppPublishingState *_processing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _processing = [[MSGraphMobileAppPublishingState alloc] init];
        _processing.enumValue = MSGraphMobileAppPublishingStateProcessing;
    });
    return _processing;
}
+ (MSGraphMobileAppPublishingState*) published {
    static MSGraphMobileAppPublishingState *_published;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _published = [[MSGraphMobileAppPublishingState alloc] init];
        _published.enumValue = MSGraphMobileAppPublishingStatePublished;
    });
    return _published;
}

+ (MSGraphMobileAppPublishingState*) UnknownEnumValue {
    static MSGraphMobileAppPublishingState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMobileAppPublishingState alloc] init];
        _unknownValue.enumValue = MSGraphMobileAppPublishingStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMobileAppPublishingState*) mobileAppPublishingStateWithEnumValue:(MSGraphMobileAppPublishingStateValue)val {

    switch(val)
    {
        case MSGraphMobileAppPublishingStateNotPublished:
            return [MSGraphMobileAppPublishingState notPublished];
        case MSGraphMobileAppPublishingStateProcessing:
            return [MSGraphMobileAppPublishingState processing];
        case MSGraphMobileAppPublishingStatePublished:
            return [MSGraphMobileAppPublishingState published];
        case MSGraphMobileAppPublishingStateEndOfEnum:
        default:
            return [MSGraphMobileAppPublishingState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMobileAppPublishingStateNotPublished:
            return @"notPublished";
        case MSGraphMobileAppPublishingStateProcessing:
            return @"processing";
        case MSGraphMobileAppPublishingStatePublished:
            return @"published";
        case MSGraphMobileAppPublishingStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMobileAppPublishingStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMobileAppPublishingState)

- (MSGraphMobileAppPublishingState*) toMSGraphMobileAppPublishingState{

    if([self isEqualToString:@"notPublished"])
    {
          return [MSGraphMobileAppPublishingState notPublished];
    }
    else if([self isEqualToString:@"processing"])
    {
          return [MSGraphMobileAppPublishingState processing];
    }
    else if([self isEqualToString:@"published"])
    {
          return [MSGraphMobileAppPublishingState published];
    }
    else {
        return [MSGraphMobileAppPublishingState UnknownEnumValue];
    }
}

@end
