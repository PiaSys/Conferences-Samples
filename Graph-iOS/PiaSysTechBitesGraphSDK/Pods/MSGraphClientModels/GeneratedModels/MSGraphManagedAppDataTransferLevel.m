// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppDataTransferLevel.h"

@interface MSGraphManagedAppDataTransferLevel () {
    MSGraphManagedAppDataTransferLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppDataTransferLevelValue enumValue;
@end

@implementation MSGraphManagedAppDataTransferLevel

+ (MSGraphManagedAppDataTransferLevel*) allApps {
    static MSGraphManagedAppDataTransferLevel *_allApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allApps = [[MSGraphManagedAppDataTransferLevel alloc] init];
        _allApps.enumValue = MSGraphManagedAppDataTransferLevelAllApps;
    });
    return _allApps;
}
+ (MSGraphManagedAppDataTransferLevel*) managedApps {
    static MSGraphManagedAppDataTransferLevel *_managedApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _managedApps = [[MSGraphManagedAppDataTransferLevel alloc] init];
        _managedApps.enumValue = MSGraphManagedAppDataTransferLevelManagedApps;
    });
    return _managedApps;
}
+ (MSGraphManagedAppDataTransferLevel*) none {
    static MSGraphManagedAppDataTransferLevel *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphManagedAppDataTransferLevel alloc] init];
        _none.enumValue = MSGraphManagedAppDataTransferLevelNone;
    });
    return _none;
}

+ (MSGraphManagedAppDataTransferLevel*) UnknownEnumValue {
    static MSGraphManagedAppDataTransferLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppDataTransferLevel alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppDataTransferLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppDataTransferLevel*) managedAppDataTransferLevelWithEnumValue:(MSGraphManagedAppDataTransferLevelValue)val {

    switch(val)
    {
        case MSGraphManagedAppDataTransferLevelAllApps:
            return [MSGraphManagedAppDataTransferLevel allApps];
        case MSGraphManagedAppDataTransferLevelManagedApps:
            return [MSGraphManagedAppDataTransferLevel managedApps];
        case MSGraphManagedAppDataTransferLevelNone:
            return [MSGraphManagedAppDataTransferLevel none];
        case MSGraphManagedAppDataTransferLevelEndOfEnum:
        default:
            return [MSGraphManagedAppDataTransferLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppDataTransferLevelAllApps:
            return @"allApps";
        case MSGraphManagedAppDataTransferLevelManagedApps:
            return @"managedApps";
        case MSGraphManagedAppDataTransferLevelNone:
            return @"none";
        case MSGraphManagedAppDataTransferLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppDataTransferLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppDataTransferLevel)

- (MSGraphManagedAppDataTransferLevel*) toMSGraphManagedAppDataTransferLevel{

    if([self isEqualToString:@"allApps"])
    {
          return [MSGraphManagedAppDataTransferLevel allApps];
    }
    else if([self isEqualToString:@"managedApps"])
    {
          return [MSGraphManagedAppDataTransferLevel managedApps];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphManagedAppDataTransferLevel none];
    }
    else {
        return [MSGraphManagedAppDataTransferLevel UnknownEnumValue];
    }
}

@end
