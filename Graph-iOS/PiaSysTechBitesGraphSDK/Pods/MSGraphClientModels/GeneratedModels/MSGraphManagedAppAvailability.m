// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppAvailability.h"

@interface MSGraphManagedAppAvailability () {
    MSGraphManagedAppAvailabilityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppAvailabilityValue enumValue;
@end

@implementation MSGraphManagedAppAvailability

+ (MSGraphManagedAppAvailability*) global {
    static MSGraphManagedAppAvailability *_global;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _global = [[MSGraphManagedAppAvailability alloc] init];
        _global.enumValue = MSGraphManagedAppAvailabilityGlobal;
    });
    return _global;
}
+ (MSGraphManagedAppAvailability*) lineOfBusiness {
    static MSGraphManagedAppAvailability *_lineOfBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lineOfBusiness = [[MSGraphManagedAppAvailability alloc] init];
        _lineOfBusiness.enumValue = MSGraphManagedAppAvailabilityLineOfBusiness;
    });
    return _lineOfBusiness;
}

+ (MSGraphManagedAppAvailability*) UnknownEnumValue {
    static MSGraphManagedAppAvailability *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppAvailability alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppAvailabilityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppAvailability*) managedAppAvailabilityWithEnumValue:(MSGraphManagedAppAvailabilityValue)val {

    switch(val)
    {
        case MSGraphManagedAppAvailabilityGlobal:
            return [MSGraphManagedAppAvailability global];
        case MSGraphManagedAppAvailabilityLineOfBusiness:
            return [MSGraphManagedAppAvailability lineOfBusiness];
        case MSGraphManagedAppAvailabilityEndOfEnum:
        default:
            return [MSGraphManagedAppAvailability UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppAvailabilityGlobal:
            return @"global";
        case MSGraphManagedAppAvailabilityLineOfBusiness:
            return @"lineOfBusiness";
        case MSGraphManagedAppAvailabilityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppAvailabilityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppAvailability)

- (MSGraphManagedAppAvailability*) toMSGraphManagedAppAvailability{

    if([self isEqualToString:@"global"])
    {
          return [MSGraphManagedAppAvailability global];
    }
    else if([self isEqualToString:@"lineOfBusiness"])
    {
          return [MSGraphManagedAppAvailability lineOfBusiness];
    }
    else {
        return [MSGraphManagedAppAvailability UnknownEnumValue];
    }
}

@end
