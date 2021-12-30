// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAudioConferencing()
{
    NSString* _conferenceId;
    NSString* _tollNumber;
    NSString* _tollFreeNumber;
    NSString* _dialinUrl;
}
@end

@implementation MSGraphAudioConferencing

- (NSString*) conferenceId
{
    if([[NSNull null] isEqual:self.dictionary[@"conferenceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"conferenceId"];
}

- (void) setConferenceId: (NSString*) val
{
    self.dictionary[@"conferenceId"] = val;
}

- (NSString*) tollNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"tollNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"tollNumber"];
}

- (void) setTollNumber: (NSString*) val
{
    self.dictionary[@"tollNumber"] = val;
}

- (NSString*) tollFreeNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"tollFreeNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"tollFreeNumber"];
}

- (void) setTollFreeNumber: (NSString*) val
{
    self.dictionary[@"tollFreeNumber"] = val;
}

- (NSString*) dialinUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"dialinUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"dialinUrl"];
}

- (void) setDialinUrl: (NSString*) val
{
    self.dictionary[@"dialinUrl"] = val;
}

@end
