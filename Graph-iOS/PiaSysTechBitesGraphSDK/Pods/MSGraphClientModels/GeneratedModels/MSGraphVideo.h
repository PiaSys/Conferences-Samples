// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphVideo : MSObject

@property (nonatomic, setter=setAudioBitsPerSample:, getter=audioBitsPerSample) int32_t audioBitsPerSample;
@property (nonatomic, setter=setAudioChannels:, getter=audioChannels) int32_t audioChannels;
@property (nullable, nonatomic, setter=setAudioFormat:, getter=audioFormat) NSString* audioFormat;
@property (nonatomic, setter=setAudioSamplesPerSecond:, getter=audioSamplesPerSecond) int32_t audioSamplesPerSecond;
@property (nonatomic, setter=setBitrate:, getter=bitrate) int32_t bitrate;
@property (nonatomic, setter=setDuration:, getter=duration) int64_t duration;
@property (nullable, nonatomic, setter=setFourCC:, getter=fourCC) NSString* fourCC;
@property (nonatomic, setter=setFrameRate:, getter=frameRate) double frameRate;
@property (nonatomic, setter=setHeight:, getter=height) int32_t height;
@property (nonatomic, setter=setWidth:, getter=width) int32_t width;

@end
