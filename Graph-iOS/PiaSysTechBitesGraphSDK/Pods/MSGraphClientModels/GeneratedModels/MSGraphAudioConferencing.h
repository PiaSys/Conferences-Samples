// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAudioConferencing : MSObject

@property (nullable, nonatomic, setter=setConferenceId:, getter=conferenceId) NSString* conferenceId;
@property (nullable, nonatomic, setter=setTollNumber:, getter=tollNumber) NSString* tollNumber;
@property (nullable, nonatomic, setter=setTollFreeNumber:, getter=tollFreeNumber) NSString* tollFreeNumber;
@property (nullable, nonatomic, setter=setDialinUrl:, getter=dialinUrl) NSString* dialinUrl;

@end
