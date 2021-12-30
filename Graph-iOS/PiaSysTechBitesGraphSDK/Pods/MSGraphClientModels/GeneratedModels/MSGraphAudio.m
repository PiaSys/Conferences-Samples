// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAudio()
{
    NSString* _album;
    NSString* _albumArtist;
    NSString* _artist;
    int64_t _bitrate;
    NSString* _composers;
    NSString* _copyright;
    int16_t _disc;
    int16_t _discCount;
    int64_t _duration;
    NSString* _genre;
    BOOL _hasDrm;
    BOOL _isVariableBitrate;
    NSString* _title;
    int32_t _track;
    int32_t _trackCount;
    int32_t _year;
}
@end

@implementation MSGraphAudio

- (NSString*) album
{
    if([[NSNull null] isEqual:self.dictionary[@"album"]])
    {
        return nil;
    }   
    return self.dictionary[@"album"];
}

- (void) setAlbum: (NSString*) val
{
    self.dictionary[@"album"] = val;
}

- (NSString*) albumArtist
{
    if([[NSNull null] isEqual:self.dictionary[@"albumArtist"]])
    {
        return nil;
    }   
    return self.dictionary[@"albumArtist"];
}

- (void) setAlbumArtist: (NSString*) val
{
    self.dictionary[@"albumArtist"] = val;
}

- (NSString*) artist
{
    if([[NSNull null] isEqual:self.dictionary[@"artist"]])
    {
        return nil;
    }   
    return self.dictionary[@"artist"];
}

- (void) setArtist: (NSString*) val
{
    self.dictionary[@"artist"] = val;
}

- (int64_t) bitrate
{
    _bitrate = [self.dictionary[@"bitrate"] longLongValue];
    return _bitrate;
}

- (void) setBitrate: (int64_t) val
{
    _bitrate = val;
    self.dictionary[@"bitrate"] = @(val);
}

- (NSString*) composers
{
    if([[NSNull null] isEqual:self.dictionary[@"composers"]])
    {
        return nil;
    }   
    return self.dictionary[@"composers"];
}

- (void) setComposers: (NSString*) val
{
    self.dictionary[@"composers"] = val;
}

- (NSString*) getCopyright
{
    if([[NSNull null] isEqual:self.dictionary[@"copyright"]])
    {
        return nil;
    }   
    return self.dictionary[@"copyright"];
}

- (void) setCopyright: (NSString*) val
{
    self.dictionary[@"copyright"] = val;
}

- (int16_t) disc
{
    _disc = [self.dictionary[@"disc"] intValue];
    return _disc;
}

- (void) setDisc: (int16_t) val
{
    _disc = val;
    self.dictionary[@"disc"] = @(val);
}

- (int16_t) discCount
{
    _discCount = [self.dictionary[@"discCount"] intValue];
    return _discCount;
}

- (void) setDiscCount: (int16_t) val
{
    _discCount = val;
    self.dictionary[@"discCount"] = @(val);
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

- (NSString*) genre
{
    if([[NSNull null] isEqual:self.dictionary[@"genre"]])
    {
        return nil;
    }   
    return self.dictionary[@"genre"];
}

- (void) setGenre: (NSString*) val
{
    self.dictionary[@"genre"] = val;
}

- (BOOL) hasDrm
{
    _hasDrm = [self.dictionary[@"hasDrm"] boolValue];
    return _hasDrm;
}

- (void) setHasDrm: (BOOL) val
{
    _hasDrm = val;
    self.dictionary[@"hasDrm"] = @(val);
}

- (BOOL) isVariableBitrate
{
    _isVariableBitrate = [self.dictionary[@"isVariableBitrate"] boolValue];
    return _isVariableBitrate;
}

- (void) setIsVariableBitrate: (BOOL) val
{
    _isVariableBitrate = val;
    self.dictionary[@"isVariableBitrate"] = @(val);
}

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (int32_t) track
{
    _track = [self.dictionary[@"track"] intValue];
    return _track;
}

- (void) setTrack: (int32_t) val
{
    _track = val;
    self.dictionary[@"track"] = @(val);
}

- (int32_t) trackCount
{
    _trackCount = [self.dictionary[@"trackCount"] intValue];
    return _trackCount;
}

- (void) setTrackCount: (int32_t) val
{
    _trackCount = val;
    self.dictionary[@"trackCount"] = @(val);
}

- (int32_t) year
{
    _year = [self.dictionary[@"year"] intValue];
    return _year;
}

- (void) setYear: (int32_t) val
{
    _year = val;
    self.dictionary[@"year"] = @(val);
}

@end
