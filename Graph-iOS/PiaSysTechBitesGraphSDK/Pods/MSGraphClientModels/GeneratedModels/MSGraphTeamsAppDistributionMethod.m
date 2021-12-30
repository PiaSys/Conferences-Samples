// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamsAppDistributionMethod.h"

@interface MSGraphTeamsAppDistributionMethod () {
    MSGraphTeamsAppDistributionMethodValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamsAppDistributionMethodValue enumValue;
@end

@implementation MSGraphTeamsAppDistributionMethod

+ (MSGraphTeamsAppDistributionMethod*) store {
    static MSGraphTeamsAppDistributionMethod *_store;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _store = [[MSGraphTeamsAppDistributionMethod alloc] init];
        _store.enumValue = MSGraphTeamsAppDistributionMethodStore;
    });
    return _store;
}
+ (MSGraphTeamsAppDistributionMethod*) organization {
    static MSGraphTeamsAppDistributionMethod *_organization;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organization = [[MSGraphTeamsAppDistributionMethod alloc] init];
        _organization.enumValue = MSGraphTeamsAppDistributionMethodOrganization;
    });
    return _organization;
}
+ (MSGraphTeamsAppDistributionMethod*) sideloaded {
    static MSGraphTeamsAppDistributionMethod *_sideloaded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sideloaded = [[MSGraphTeamsAppDistributionMethod alloc] init];
        _sideloaded.enumValue = MSGraphTeamsAppDistributionMethodSideloaded;
    });
    return _sideloaded;
}
+ (MSGraphTeamsAppDistributionMethod*) unknownFutureValue {
    static MSGraphTeamsAppDistributionMethod *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamsAppDistributionMethod alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamsAppDistributionMethodUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamsAppDistributionMethod*) UnknownEnumValue {
    static MSGraphTeamsAppDistributionMethod *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamsAppDistributionMethod alloc] init];
        _unknownValue.enumValue = MSGraphTeamsAppDistributionMethodEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamsAppDistributionMethod*) teamsAppDistributionMethodWithEnumValue:(MSGraphTeamsAppDistributionMethodValue)val {

    switch(val)
    {
        case MSGraphTeamsAppDistributionMethodStore:
            return [MSGraphTeamsAppDistributionMethod store];
        case MSGraphTeamsAppDistributionMethodOrganization:
            return [MSGraphTeamsAppDistributionMethod organization];
        case MSGraphTeamsAppDistributionMethodSideloaded:
            return [MSGraphTeamsAppDistributionMethod sideloaded];
        case MSGraphTeamsAppDistributionMethodUnknownFutureValue:
            return [MSGraphTeamsAppDistributionMethod unknownFutureValue];
        case MSGraphTeamsAppDistributionMethodEndOfEnum:
        default:
            return [MSGraphTeamsAppDistributionMethod UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamsAppDistributionMethodStore:
            return @"store";
        case MSGraphTeamsAppDistributionMethodOrganization:
            return @"organization";
        case MSGraphTeamsAppDistributionMethodSideloaded:
            return @"sideloaded";
        case MSGraphTeamsAppDistributionMethodUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamsAppDistributionMethodEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamsAppDistributionMethodValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamsAppDistributionMethod)

- (MSGraphTeamsAppDistributionMethod*) toMSGraphTeamsAppDistributionMethod{

    if([self isEqualToString:@"store"])
    {
          return [MSGraphTeamsAppDistributionMethod store];
    }
    else if([self isEqualToString:@"organization"])
    {
          return [MSGraphTeamsAppDistributionMethod organization];
    }
    else if([self isEqualToString:@"sideloaded"])
    {
          return [MSGraphTeamsAppDistributionMethod sideloaded];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamsAppDistributionMethod unknownFutureValue];
    }
    else {
        return [MSGraphTeamsAppDistributionMethod UnknownEnumValue];
    }
}

@end
