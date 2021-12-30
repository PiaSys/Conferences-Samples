// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAutomaticRepliesStatus.h"

@interface MSGraphAutomaticRepliesStatus () {
    MSGraphAutomaticRepliesStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAutomaticRepliesStatusValue enumValue;
@end

@implementation MSGraphAutomaticRepliesStatus

+ (MSGraphAutomaticRepliesStatus*) disabled {
    static MSGraphAutomaticRepliesStatus *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphAutomaticRepliesStatus alloc] init];
        _disabled.enumValue = MSGraphAutomaticRepliesStatusDisabled;
    });
    return _disabled;
}
+ (MSGraphAutomaticRepliesStatus*) alwaysEnabled {
    static MSGraphAutomaticRepliesStatus *_alwaysEnabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alwaysEnabled = [[MSGraphAutomaticRepliesStatus alloc] init];
        _alwaysEnabled.enumValue = MSGraphAutomaticRepliesStatusAlwaysEnabled;
    });
    return _alwaysEnabled;
}
+ (MSGraphAutomaticRepliesStatus*) scheduled {
    static MSGraphAutomaticRepliesStatus *_scheduled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scheduled = [[MSGraphAutomaticRepliesStatus alloc] init];
        _scheduled.enumValue = MSGraphAutomaticRepliesStatusScheduled;
    });
    return _scheduled;
}

+ (MSGraphAutomaticRepliesStatus*) UnknownEnumValue {
    static MSGraphAutomaticRepliesStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAutomaticRepliesStatus alloc] init];
        _unknownValue.enumValue = MSGraphAutomaticRepliesStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAutomaticRepliesStatus*) automaticRepliesStatusWithEnumValue:(MSGraphAutomaticRepliesStatusValue)val {

    switch(val)
    {
        case MSGraphAutomaticRepliesStatusDisabled:
            return [MSGraphAutomaticRepliesStatus disabled];
        case MSGraphAutomaticRepliesStatusAlwaysEnabled:
            return [MSGraphAutomaticRepliesStatus alwaysEnabled];
        case MSGraphAutomaticRepliesStatusScheduled:
            return [MSGraphAutomaticRepliesStatus scheduled];
        case MSGraphAutomaticRepliesStatusEndOfEnum:
        default:
            return [MSGraphAutomaticRepliesStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAutomaticRepliesStatusDisabled:
            return @"disabled";
        case MSGraphAutomaticRepliesStatusAlwaysEnabled:
            return @"alwaysEnabled";
        case MSGraphAutomaticRepliesStatusScheduled:
            return @"scheduled";
        case MSGraphAutomaticRepliesStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAutomaticRepliesStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAutomaticRepliesStatus)

- (MSGraphAutomaticRepliesStatus*) toMSGraphAutomaticRepliesStatus{

    if([self isEqualToString:@"disabled"])
    {
          return [MSGraphAutomaticRepliesStatus disabled];
    }
    else if([self isEqualToString:@"alwaysEnabled"])
    {
          return [MSGraphAutomaticRepliesStatus alwaysEnabled];
    }
    else if([self isEqualToString:@"scheduled"])
    {
          return [MSGraphAutomaticRepliesStatus scheduled];
    }
    else {
        return [MSGraphAutomaticRepliesStatus UnknownEnumValue];
    }
}

@end
