// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAudio : MSObject

@property (nullable, nonatomic, setter=setAlbum:, getter=album) NSString* album;
@property (nullable, nonatomic, setter=setAlbumArtist:, getter=albumArtist) NSString* albumArtist;
@property (nullable, nonatomic, setter=setArtist:, getter=artist) NSString* artist;
@property (nonatomic, setter=setBitrate:, getter=bitrate) int64_t bitrate;
@property (nullable, nonatomic, setter=setComposers:, getter=composers) NSString* composers;
@property (nullable, nonatomic, setter=setCopyright:, getter=getCopyright) NSString* copyright;
@property (nonatomic, setter=setDisc:, getter=disc) int16_t disc;
@property (nonatomic, setter=setDiscCount:, getter=discCount) int16_t discCount;
@property (nonatomic, setter=setDuration:, getter=duration) int64_t duration;
@property (nullable, nonatomic, setter=setGenre:, getter=genre) NSString* genre;
@property (nonatomic, setter=setHasDrm:, getter=hasDrm) BOOL hasDrm;
@property (nonatomic, setter=setIsVariableBitrate:, getter=isVariableBitrate) BOOL isVariableBitrate;
@property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
@property (nonatomic, setter=setTrack:, getter=track) int32_t track;
@property (nonatomic, setter=setTrackCount:, getter=trackCount) int32_t trackCount;
@property (nonatomic, setter=setYear:, getter=year) int32_t year;

@end
