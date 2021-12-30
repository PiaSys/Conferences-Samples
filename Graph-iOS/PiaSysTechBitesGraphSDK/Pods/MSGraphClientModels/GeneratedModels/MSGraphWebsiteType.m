// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWebsiteType.h"

@interface MSGraphWebsiteType () {
    MSGraphWebsiteTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWebsiteTypeValue enumValue;
@end

@implementation MSGraphWebsiteType

+ (MSGraphWebsiteType*) other {
    static MSGraphWebsiteType *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphWebsiteType alloc] init];
        _other.enumValue = MSGraphWebsiteTypeOther;
    });
    return _other;
}
+ (MSGraphWebsiteType*) home {
    static MSGraphWebsiteType *_home;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _home = [[MSGraphWebsiteType alloc] init];
        _home.enumValue = MSGraphWebsiteTypeHome;
    });
    return _home;
}
+ (MSGraphWebsiteType*) work {
    static MSGraphWebsiteType *_work;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _work = [[MSGraphWebsiteType alloc] init];
        _work.enumValue = MSGraphWebsiteTypeWork;
    });
    return _work;
}
+ (MSGraphWebsiteType*) blog {
    static MSGraphWebsiteType *_blog;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blog = [[MSGraphWebsiteType alloc] init];
        _blog.enumValue = MSGraphWebsiteTypeBlog;
    });
    return _blog;
}
+ (MSGraphWebsiteType*) profile {
    static MSGraphWebsiteType *_profile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _profile = [[MSGraphWebsiteType alloc] init];
        _profile.enumValue = MSGraphWebsiteTypeProfile;
    });
    return _profile;
}

+ (MSGraphWebsiteType*) UnknownEnumValue {
    static MSGraphWebsiteType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWebsiteType alloc] init];
        _unknownValue.enumValue = MSGraphWebsiteTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWebsiteType*) websiteTypeWithEnumValue:(MSGraphWebsiteTypeValue)val {

    switch(val)
    {
        case MSGraphWebsiteTypeOther:
            return [MSGraphWebsiteType other];
        case MSGraphWebsiteTypeHome:
            return [MSGraphWebsiteType home];
        case MSGraphWebsiteTypeWork:
            return [MSGraphWebsiteType work];
        case MSGraphWebsiteTypeBlog:
            return [MSGraphWebsiteType blog];
        case MSGraphWebsiteTypeProfile:
            return [MSGraphWebsiteType profile];
        case MSGraphWebsiteTypeEndOfEnum:
        default:
            return [MSGraphWebsiteType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWebsiteTypeOther:
            return @"other";
        case MSGraphWebsiteTypeHome:
            return @"home";
        case MSGraphWebsiteTypeWork:
            return @"work";
        case MSGraphWebsiteTypeBlog:
            return @"blog";
        case MSGraphWebsiteTypeProfile:
            return @"profile";
        case MSGraphWebsiteTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWebsiteTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWebsiteType)

- (MSGraphWebsiteType*) toMSGraphWebsiteType{

    if([self isEqualToString:@"other"])
    {
          return [MSGraphWebsiteType other];
    }
    else if([self isEqualToString:@"home"])
    {
          return [MSGraphWebsiteType home];
    }
    else if([self isEqualToString:@"work"])
    {
          return [MSGraphWebsiteType work];
    }
    else if([self isEqualToString:@"blog"])
    {
          return [MSGraphWebsiteType blog];
    }
    else if([self isEqualToString:@"profile"])
    {
          return [MSGraphWebsiteType profile];
    }
    else {
        return [MSGraphWebsiteType UnknownEnumValue];
    }
}

@end
