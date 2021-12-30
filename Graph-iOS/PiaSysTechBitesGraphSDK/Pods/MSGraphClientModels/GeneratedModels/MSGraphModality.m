// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphModality.h"

@interface MSGraphModality () {
    MSGraphModalityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphModalityValue enumValue;
@end

@implementation MSGraphModality

+ (MSGraphModality*) audio {
    static MSGraphModality *_audio;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _audio = [[MSGraphModality alloc] init];
        _audio.enumValue = MSGraphModalityAudio;
    });
    return _audio;
}
+ (MSGraphModality*) video {
    static MSGraphModality *_video;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _video = [[MSGraphModality alloc] init];
        _video.enumValue = MSGraphModalityVideo;
    });
    return _video;
}
+ (MSGraphModality*) videoBasedScreenSharing {
    static MSGraphModality *_videoBasedScreenSharing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _videoBasedScreenSharing = [[MSGraphModality alloc] init];
        _videoBasedScreenSharing.enumValue = MSGraphModalityVideoBasedScreenSharing;
    });
    return _videoBasedScreenSharing;
}
+ (MSGraphModality*) data {
    static MSGraphModality *_data;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _data = [[MSGraphModality alloc] init];
        _data.enumValue = MSGraphModalityData;
    });
    return _data;
}
+ (MSGraphModality*) unknownFutureValue {
    static MSGraphModality *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphModality alloc] init];
        _unknownFutureValue.enumValue = MSGraphModalityUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphModality*) UnknownEnumValue {
    static MSGraphModality *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphModality alloc] init];
        _unknownValue.enumValue = MSGraphModalityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphModality*) modalityWithEnumValue:(MSGraphModalityValue)val {

    switch(val)
    {
        case MSGraphModalityAudio:
            return [MSGraphModality audio];
        case MSGraphModalityVideo:
            return [MSGraphModality video];
        case MSGraphModalityVideoBasedScreenSharing:
            return [MSGraphModality videoBasedScreenSharing];
        case MSGraphModalityData:
            return [MSGraphModality data];
        case MSGraphModalityUnknownFutureValue:
            return [MSGraphModality unknownFutureValue];
        case MSGraphModalityEndOfEnum:
        default:
            return [MSGraphModality UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphModalityAudio:
            return @"audio";
        case MSGraphModalityVideo:
            return @"video";
        case MSGraphModalityVideoBasedScreenSharing:
            return @"videoBasedScreenSharing";
        case MSGraphModalityData:
            return @"data";
        case MSGraphModalityUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphModalityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphModalityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphModality)

- (MSGraphModality*) toMSGraphModality{

    if([self isEqualToString:@"audio"])
    {
          return [MSGraphModality audio];
    }
    else if([self isEqualToString:@"video"])
    {
          return [MSGraphModality video];
    }
    else if([self isEqualToString:@"videoBasedScreenSharing"])
    {
          return [MSGraphModality videoBasedScreenSharing];
    }
    else if([self isEqualToString:@"data"])
    {
          return [MSGraphModality data];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphModality unknownFutureValue];
    }
    else {
        return [MSGraphModality UnknownEnumValue];
    }
}

@end
