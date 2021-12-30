// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLogonType.h"

@interface MSGraphLogonType () {
    MSGraphLogonTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphLogonTypeValue enumValue;
@end

@implementation MSGraphLogonType

+ (MSGraphLogonType*) unknown {
    static MSGraphLogonType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphLogonType alloc] init];
        _unknown.enumValue = MSGraphLogonTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphLogonType*) interactive {
    static MSGraphLogonType *_interactive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interactive = [[MSGraphLogonType alloc] init];
        _interactive.enumValue = MSGraphLogonTypeInteractive;
    });
    return _interactive;
}
+ (MSGraphLogonType*) remoteInteractive {
    static MSGraphLogonType *_remoteInteractive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _remoteInteractive = [[MSGraphLogonType alloc] init];
        _remoteInteractive.enumValue = MSGraphLogonTypeRemoteInteractive;
    });
    return _remoteInteractive;
}
+ (MSGraphLogonType*) network {
    static MSGraphLogonType *_network;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _network = [[MSGraphLogonType alloc] init];
        _network.enumValue = MSGraphLogonTypeNetwork;
    });
    return _network;
}
+ (MSGraphLogonType*) batch {
    static MSGraphLogonType *_batch;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _batch = [[MSGraphLogonType alloc] init];
        _batch.enumValue = MSGraphLogonTypeBatch;
    });
    return _batch;
}
+ (MSGraphLogonType*) service {
    static MSGraphLogonType *_service;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _service = [[MSGraphLogonType alloc] init];
        _service.enumValue = MSGraphLogonTypeService;
    });
    return _service;
}
+ (MSGraphLogonType*) unknownFutureValue {
    static MSGraphLogonType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphLogonType alloc] init];
        _unknownFutureValue.enumValue = MSGraphLogonTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphLogonType*) UnknownEnumValue {
    static MSGraphLogonType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphLogonType alloc] init];
        _unknownValue.enumValue = MSGraphLogonTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphLogonType*) logonTypeWithEnumValue:(MSGraphLogonTypeValue)val {

    switch(val)
    {
        case MSGraphLogonTypeUnknown:
            return [MSGraphLogonType unknown];
        case MSGraphLogonTypeInteractive:
            return [MSGraphLogonType interactive];
        case MSGraphLogonTypeRemoteInteractive:
            return [MSGraphLogonType remoteInteractive];
        case MSGraphLogonTypeNetwork:
            return [MSGraphLogonType network];
        case MSGraphLogonTypeBatch:
            return [MSGraphLogonType batch];
        case MSGraphLogonTypeService:
            return [MSGraphLogonType service];
        case MSGraphLogonTypeUnknownFutureValue:
            return [MSGraphLogonType unknownFutureValue];
        case MSGraphLogonTypeEndOfEnum:
        default:
            return [MSGraphLogonType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphLogonTypeUnknown:
            return @"unknown";
        case MSGraphLogonTypeInteractive:
            return @"interactive";
        case MSGraphLogonTypeRemoteInteractive:
            return @"remoteInteractive";
        case MSGraphLogonTypeNetwork:
            return @"network";
        case MSGraphLogonTypeBatch:
            return @"batch";
        case MSGraphLogonTypeService:
            return @"service";
        case MSGraphLogonTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphLogonTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphLogonTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphLogonType)

- (MSGraphLogonType*) toMSGraphLogonType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphLogonType unknown];
    }
    else if([self isEqualToString:@"interactive"])
    {
          return [MSGraphLogonType interactive];
    }
    else if([self isEqualToString:@"remoteInteractive"])
    {
          return [MSGraphLogonType remoteInteractive];
    }
    else if([self isEqualToString:@"network"])
    {
          return [MSGraphLogonType network];
    }
    else if([self isEqualToString:@"batch"])
    {
          return [MSGraphLogonType batch];
    }
    else if([self isEqualToString:@"service"])
    {
          return [MSGraphLogonType service];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphLogonType unknownFutureValue];
    }
    else {
        return [MSGraphLogonType UnknownEnumValue];
    }
}

@end
