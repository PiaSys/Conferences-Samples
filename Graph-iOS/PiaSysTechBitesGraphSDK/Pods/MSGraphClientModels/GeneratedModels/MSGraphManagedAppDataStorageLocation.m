// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppDataStorageLocation.h"

@interface MSGraphManagedAppDataStorageLocation () {
    MSGraphManagedAppDataStorageLocationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppDataStorageLocationValue enumValue;
@end

@implementation MSGraphManagedAppDataStorageLocation

+ (MSGraphManagedAppDataStorageLocation*) oneDriveForBusiness {
    static MSGraphManagedAppDataStorageLocation *_oneDriveForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneDriveForBusiness = [[MSGraphManagedAppDataStorageLocation alloc] init];
        _oneDriveForBusiness.enumValue = MSGraphManagedAppDataStorageLocationOneDriveForBusiness;
    });
    return _oneDriveForBusiness;
}
+ (MSGraphManagedAppDataStorageLocation*) sharePoint {
    static MSGraphManagedAppDataStorageLocation *_sharePoint;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharePoint = [[MSGraphManagedAppDataStorageLocation alloc] init];
        _sharePoint.enumValue = MSGraphManagedAppDataStorageLocationSharePoint;
    });
    return _sharePoint;
}
+ (MSGraphManagedAppDataStorageLocation*) localStorage {
    static MSGraphManagedAppDataStorageLocation *_localStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localStorage = [[MSGraphManagedAppDataStorageLocation alloc] init];
        _localStorage.enumValue = MSGraphManagedAppDataStorageLocationLocalStorage;
    });
    return _localStorage;
}

+ (MSGraphManagedAppDataStorageLocation*) UnknownEnumValue {
    static MSGraphManagedAppDataStorageLocation *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppDataStorageLocation alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppDataStorageLocationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppDataStorageLocation*) managedAppDataStorageLocationWithEnumValue:(MSGraphManagedAppDataStorageLocationValue)val {

    switch(val)
    {
        case MSGraphManagedAppDataStorageLocationOneDriveForBusiness:
            return [MSGraphManagedAppDataStorageLocation oneDriveForBusiness];
        case MSGraphManagedAppDataStorageLocationSharePoint:
            return [MSGraphManagedAppDataStorageLocation sharePoint];
        case MSGraphManagedAppDataStorageLocationLocalStorage:
            return [MSGraphManagedAppDataStorageLocation localStorage];
        case MSGraphManagedAppDataStorageLocationEndOfEnum:
        default:
            return [MSGraphManagedAppDataStorageLocation UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppDataStorageLocationOneDriveForBusiness:
            return @"oneDriveForBusiness";
        case MSGraphManagedAppDataStorageLocationSharePoint:
            return @"sharePoint";
        case MSGraphManagedAppDataStorageLocationLocalStorage:
            return @"localStorage";
        case MSGraphManagedAppDataStorageLocationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppDataStorageLocationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppDataStorageLocation)

- (MSGraphManagedAppDataStorageLocation*) toMSGraphManagedAppDataStorageLocation{

    if([self isEqualToString:@"oneDriveForBusiness"])
    {
          return [MSGraphManagedAppDataStorageLocation oneDriveForBusiness];
    }
    else if([self isEqualToString:@"sharePoint"])
    {
          return [MSGraphManagedAppDataStorageLocation sharePoint];
    }
    else if([self isEqualToString:@"localStorage"])
    {
          return [MSGraphManagedAppDataStorageLocation localStorage];
    }
    else {
        return [MSGraphManagedAppDataStorageLocation UnknownEnumValue];
    }
}

@end
