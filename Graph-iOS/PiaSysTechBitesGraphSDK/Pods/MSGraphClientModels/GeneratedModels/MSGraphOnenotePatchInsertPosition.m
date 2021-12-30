// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnenotePatchInsertPosition.h"

@interface MSGraphOnenotePatchInsertPosition () {
    MSGraphOnenotePatchInsertPositionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnenotePatchInsertPositionValue enumValue;
@end

@implementation MSGraphOnenotePatchInsertPosition

+ (MSGraphOnenotePatchInsertPosition*) after {
    static MSGraphOnenotePatchInsertPosition *_after;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _after = [[MSGraphOnenotePatchInsertPosition alloc] init];
        _after.enumValue = MSGraphOnenotePatchInsertPositionAfter;
    });
    return _after;
}
+ (MSGraphOnenotePatchInsertPosition*) before {
    static MSGraphOnenotePatchInsertPosition *_before;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _before = [[MSGraphOnenotePatchInsertPosition alloc] init];
        _before.enumValue = MSGraphOnenotePatchInsertPositionBefore;
    });
    return _before;
}

+ (MSGraphOnenotePatchInsertPosition*) UnknownEnumValue {
    static MSGraphOnenotePatchInsertPosition *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnenotePatchInsertPosition alloc] init];
        _unknownValue.enumValue = MSGraphOnenotePatchInsertPositionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnenotePatchInsertPosition*) onenotePatchInsertPositionWithEnumValue:(MSGraphOnenotePatchInsertPositionValue)val {

    switch(val)
    {
        case MSGraphOnenotePatchInsertPositionAfter:
            return [MSGraphOnenotePatchInsertPosition after];
        case MSGraphOnenotePatchInsertPositionBefore:
            return [MSGraphOnenotePatchInsertPosition before];
        case MSGraphOnenotePatchInsertPositionEndOfEnum:
        default:
            return [MSGraphOnenotePatchInsertPosition UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnenotePatchInsertPositionAfter:
            return @"After";
        case MSGraphOnenotePatchInsertPositionBefore:
            return @"Before";
        case MSGraphOnenotePatchInsertPositionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnenotePatchInsertPositionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnenotePatchInsertPosition)

- (MSGraphOnenotePatchInsertPosition*) toMSGraphOnenotePatchInsertPosition{

    if([self isEqualToString:@"After"])
    {
          return [MSGraphOnenotePatchInsertPosition after];
    }
    else if([self isEqualToString:@"Before"])
    {
          return [MSGraphOnenotePatchInsertPosition before];
    }
    else {
        return [MSGraphOnenotePatchInsertPosition UnknownEnumValue];
    }
}

@end
