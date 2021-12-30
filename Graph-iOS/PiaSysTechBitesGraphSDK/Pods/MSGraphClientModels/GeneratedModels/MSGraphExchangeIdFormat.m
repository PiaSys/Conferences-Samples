// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExchangeIdFormat.h"

@interface MSGraphExchangeIdFormat () {
    MSGraphExchangeIdFormatValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExchangeIdFormatValue enumValue;
@end

@implementation MSGraphExchangeIdFormat

+ (MSGraphExchangeIdFormat*) entryId {
    static MSGraphExchangeIdFormat *_entryId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _entryId = [[MSGraphExchangeIdFormat alloc] init];
        _entryId.enumValue = MSGraphExchangeIdFormatEntryId;
    });
    return _entryId;
}
+ (MSGraphExchangeIdFormat*) ewsId {
    static MSGraphExchangeIdFormat *_ewsId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ewsId = [[MSGraphExchangeIdFormat alloc] init];
        _ewsId.enumValue = MSGraphExchangeIdFormatEwsId;
    });
    return _ewsId;
}
+ (MSGraphExchangeIdFormat*) immutableEntryId {
    static MSGraphExchangeIdFormat *_immutableEntryId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _immutableEntryId = [[MSGraphExchangeIdFormat alloc] init];
        _immutableEntryId.enumValue = MSGraphExchangeIdFormatImmutableEntryId;
    });
    return _immutableEntryId;
}
+ (MSGraphExchangeIdFormat*) restId {
    static MSGraphExchangeIdFormat *_restId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restId = [[MSGraphExchangeIdFormat alloc] init];
        _restId.enumValue = MSGraphExchangeIdFormatRestId;
    });
    return _restId;
}
+ (MSGraphExchangeIdFormat*) restImmutableEntryId {
    static MSGraphExchangeIdFormat *_restImmutableEntryId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restImmutableEntryId = [[MSGraphExchangeIdFormat alloc] init];
        _restImmutableEntryId.enumValue = MSGraphExchangeIdFormatRestImmutableEntryId;
    });
    return _restImmutableEntryId;
}

+ (MSGraphExchangeIdFormat*) UnknownEnumValue {
    static MSGraphExchangeIdFormat *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExchangeIdFormat alloc] init];
        _unknownValue.enumValue = MSGraphExchangeIdFormatEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExchangeIdFormat*) exchangeIdFormatWithEnumValue:(MSGraphExchangeIdFormatValue)val {

    switch(val)
    {
        case MSGraphExchangeIdFormatEntryId:
            return [MSGraphExchangeIdFormat entryId];
        case MSGraphExchangeIdFormatEwsId:
            return [MSGraphExchangeIdFormat ewsId];
        case MSGraphExchangeIdFormatImmutableEntryId:
            return [MSGraphExchangeIdFormat immutableEntryId];
        case MSGraphExchangeIdFormatRestId:
            return [MSGraphExchangeIdFormat restId];
        case MSGraphExchangeIdFormatRestImmutableEntryId:
            return [MSGraphExchangeIdFormat restImmutableEntryId];
        case MSGraphExchangeIdFormatEndOfEnum:
        default:
            return [MSGraphExchangeIdFormat UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExchangeIdFormatEntryId:
            return @"entryId";
        case MSGraphExchangeIdFormatEwsId:
            return @"ewsId";
        case MSGraphExchangeIdFormatImmutableEntryId:
            return @"immutableEntryId";
        case MSGraphExchangeIdFormatRestId:
            return @"restId";
        case MSGraphExchangeIdFormatRestImmutableEntryId:
            return @"restImmutableEntryId";
        case MSGraphExchangeIdFormatEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExchangeIdFormatValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExchangeIdFormat)

- (MSGraphExchangeIdFormat*) toMSGraphExchangeIdFormat{

    if([self isEqualToString:@"entryId"])
    {
          return [MSGraphExchangeIdFormat entryId];
    }
    else if([self isEqualToString:@"ewsId"])
    {
          return [MSGraphExchangeIdFormat ewsId];
    }
    else if([self isEqualToString:@"immutableEntryId"])
    {
          return [MSGraphExchangeIdFormat immutableEntryId];
    }
    else if([self isEqualToString:@"restId"])
    {
          return [MSGraphExchangeIdFormat restId];
    }
    else if([self isEqualToString:@"restImmutableEntryId"])
    {
          return [MSGraphExchangeIdFormat restImmutableEntryId];
    }
    else {
        return [MSGraphExchangeIdFormat UnknownEnumValue];
    }
}

@end
