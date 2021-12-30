// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaStream()
{
    MSGraphModality* _mediaType;
    NSString* _label;
    NSString* _sourceId;
    MSGraphMediaDirection* _direction;
    BOOL _serverMuted;
}
@end

@implementation MSGraphMediaStream

- (MSGraphModality*) mediaType
{
    if(!_mediaType){
        _mediaType = [self.dictionary[@"mediaType"] toMSGraphModality];
    }
    return _mediaType;
}

- (void) setMediaType: (MSGraphModality*) val
{
    _mediaType = val;
    self.dictionary[@"mediaType"] = val;
}

- (NSString*) label
{
    if([[NSNull null] isEqual:self.dictionary[@"label"]])
    {
        return nil;
    }   
    return self.dictionary[@"label"];
}

- (void) setLabel: (NSString*) val
{
    self.dictionary[@"label"] = val;
}

- (NSString*) sourceId
{
    return self.dictionary[@"sourceId"];
}

- (void) setSourceId: (NSString*) val
{
    self.dictionary[@"sourceId"] = val;
}

- (MSGraphMediaDirection*) direction
{
    if(!_direction){
        _direction = [self.dictionary[@"direction"] toMSGraphMediaDirection];
    }
    return _direction;
}

- (void) setDirection: (MSGraphMediaDirection*) val
{
    _direction = val;
    self.dictionary[@"direction"] = val;
}

- (BOOL) serverMuted
{
    _serverMuted = [self.dictionary[@"serverMuted"] boolValue];
    return _serverMuted;
}

- (void) setServerMuted: (BOOL) val
{
    _serverMuted = val;
    self.dictionary[@"serverMuted"] = @(val);
}

@end
