// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphScreenSharingRole.h"

@interface MSGraphScreenSharingRole () {
    MSGraphScreenSharingRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphScreenSharingRoleValue enumValue;
@end

@implementation MSGraphScreenSharingRole

+ (MSGraphScreenSharingRole*) viewer {
    static MSGraphScreenSharingRole *_viewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _viewer = [[MSGraphScreenSharingRole alloc] init];
        _viewer.enumValue = MSGraphScreenSharingRoleViewer;
    });
    return _viewer;
}
+ (MSGraphScreenSharingRole*) sharer {
    static MSGraphScreenSharingRole *_sharer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharer = [[MSGraphScreenSharingRole alloc] init];
        _sharer.enumValue = MSGraphScreenSharingRoleSharer;
    });
    return _sharer;
}

+ (MSGraphScreenSharingRole*) UnknownEnumValue {
    static MSGraphScreenSharingRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphScreenSharingRole alloc] init];
        _unknownValue.enumValue = MSGraphScreenSharingRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphScreenSharingRole*) screenSharingRoleWithEnumValue:(MSGraphScreenSharingRoleValue)val {

    switch(val)
    {
        case MSGraphScreenSharingRoleViewer:
            return [MSGraphScreenSharingRole viewer];
        case MSGraphScreenSharingRoleSharer:
            return [MSGraphScreenSharingRole sharer];
        case MSGraphScreenSharingRoleEndOfEnum:
        default:
            return [MSGraphScreenSharingRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphScreenSharingRoleViewer:
            return @"viewer";
        case MSGraphScreenSharingRoleSharer:
            return @"sharer";
        case MSGraphScreenSharingRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphScreenSharingRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphScreenSharingRole)

- (MSGraphScreenSharingRole*) toMSGraphScreenSharingRole{

    if([self isEqualToString:@"viewer"])
    {
          return [MSGraphScreenSharingRole viewer];
    }
    else if([self isEqualToString:@"sharer"])
    {
          return [MSGraphScreenSharingRole sharer];
    }
    else {
        return [MSGraphScreenSharingRole UnknownEnumValue];
    }
}

@end
