// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphActivityDomain.h"

@interface MSGraphActivityDomain () {
    MSGraphActivityDomainValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphActivityDomainValue enumValue;
@end

@implementation MSGraphActivityDomain

+ (MSGraphActivityDomain*) unknown {
    static MSGraphActivityDomain *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphActivityDomain alloc] init];
        _unknown.enumValue = MSGraphActivityDomainUnknown;
    });
    return _unknown;
}
+ (MSGraphActivityDomain*) work {
    static MSGraphActivityDomain *_work;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _work = [[MSGraphActivityDomain alloc] init];
        _work.enumValue = MSGraphActivityDomainWork;
    });
    return _work;
}
+ (MSGraphActivityDomain*) personal {
    static MSGraphActivityDomain *_personal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _personal = [[MSGraphActivityDomain alloc] init];
        _personal.enumValue = MSGraphActivityDomainPersonal;
    });
    return _personal;
}
+ (MSGraphActivityDomain*) unrestricted {
    static MSGraphActivityDomain *_unrestricted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unrestricted = [[MSGraphActivityDomain alloc] init];
        _unrestricted.enumValue = MSGraphActivityDomainUnrestricted;
    });
    return _unrestricted;
}

+ (MSGraphActivityDomain*) UnknownEnumValue {
    static MSGraphActivityDomain *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphActivityDomain alloc] init];
        _unknownValue.enumValue = MSGraphActivityDomainEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphActivityDomain*) activityDomainWithEnumValue:(MSGraphActivityDomainValue)val {

    switch(val)
    {
        case MSGraphActivityDomainUnknown:
            return [MSGraphActivityDomain unknown];
        case MSGraphActivityDomainWork:
            return [MSGraphActivityDomain work];
        case MSGraphActivityDomainPersonal:
            return [MSGraphActivityDomain personal];
        case MSGraphActivityDomainUnrestricted:
            return [MSGraphActivityDomain unrestricted];
        case MSGraphActivityDomainEndOfEnum:
        default:
            return [MSGraphActivityDomain UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphActivityDomainUnknown:
            return @"unknown";
        case MSGraphActivityDomainWork:
            return @"work";
        case MSGraphActivityDomainPersonal:
            return @"personal";
        case MSGraphActivityDomainUnrestricted:
            return @"unrestricted";
        case MSGraphActivityDomainEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphActivityDomainValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphActivityDomain)

- (MSGraphActivityDomain*) toMSGraphActivityDomain{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphActivityDomain unknown];
    }
    else if([self isEqualToString:@"work"])
    {
          return [MSGraphActivityDomain work];
    }
    else if([self isEqualToString:@"personal"])
    {
          return [MSGraphActivityDomain personal];
    }
    else if([self isEqualToString:@"unrestricted"])
    {
          return [MSGraphActivityDomain unrestricted];
    }
    else {
        return [MSGraphActivityDomain UnknownEnumValue];
    }
}

@end
