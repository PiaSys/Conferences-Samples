// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphVideo()
{
    int32_t _audioBitsPerSample;
    int32_t _audioChannels;
    NSString* _audioFormat;
    int32_t _audioSamplesPerSecond;
    int32_t _bitrate;
    int64_t _duration;
    NSString* _fourCC;
    double _frameRate;
    int32_t _height;
    int32_t _width;
}
@end

@implementation MSGraphVideo

- (int32_t) audioBitsPerSample
{
    _audioBitsPerSample = [self.dictionary[@"audioBitsPerSample"] intValue];
    return _audioBitsPerSample;
}

- (void) setAudioBitsPerSample: (int32_t) val
{
    _audioBitsPerSample = val;
    self.dictionary[@"audioBitsPerSample"] = @(val);
}

- (int32_t) audioChannels
{
    _audioChannels = [self.dictionary[@"audioChannels"] intValue];
    return _audioChannels;
}

- (void) setAudioChannels: (int32_t) val
{
    _audioChannels = val;
    self.dictionary[@"audioChannels"] = @(val);
}

- (NSString*) audioFormat
{
    if([[NSNull null] isEqual:self.dictionary[@"audioFormat"]])
    {
        return nil;
    }   
    return self.dictionary[@"audioFormat"];
}

- (void) setAudioFormat: (NSString*) val
{
    self.dictionary[@"audioFormat"] = val;
}

- (int32_t) audioSamplesPerSecond
{
    _audioSamplesPerSecond = [self.dictionary[@"audioSamplesPerSecond"] intValue];
    return _audioSamplesPerSecond;
}

- (void) setAudioSamplesPerSecond: (int32_t) val
{
    _audioSamplesPerSecond = val;
    self.dictionary[@"audioSamplesPerSecond"] = @(val);
}

- (int32_t) bitrate
{
    _bitrate = [self.dictionary[@"bitrate"] intValue];
    return _bitrate;
}

- (void) setBitrate: (int32_t) val
{
    _bitrate = val;
    self.dictionary[@"bitrate"] = @(val);
}

- (int64_t) duration
{
    _duration = [self.dictionary[@"duration"] longLongValue];
    return _duration;
}

- (void) setDuration: (int64_t) val
{
    _duration = val;
    self.dictionary[@"duration"] = @(val);
}

- (NSString*) fourCC
{
    if([[NSNull null] isEqual:self.dictionary[@"fourCC"]])
    {
        return nil;
    }   
    return self.dictionary[@"fourCC"];
}

- (void) setFourCC: (NSString*) val
{
    self.dictionary[@"fourCC"] = val;
}

- (double) frameRate
{
    _frameRate = [self.dictionary[@"frameRate"] floatValue];
    return _frameRate;
}

- (void) setFrameRate: (double) val
{
    _frameRate = val;
    self.dictionary[@"frameRate"] = @(val);
}

- (int32_t) height
{
    _height = [self.dictionary[@"height"] intValue];
    return _height;
}

- (void) setHeight: (int32_t) val
{
    _height = val;
    self.dictionary[@"height"] = @(val);
}

- (int32_t) width
{
    _width = [self.dictionary[@"width"] intValue];
    return _width;
}

- (void) setWidth: (int32_t) val
{
    _width = val;
    self.dictionary[@"width"] = @(val);
}

@end
