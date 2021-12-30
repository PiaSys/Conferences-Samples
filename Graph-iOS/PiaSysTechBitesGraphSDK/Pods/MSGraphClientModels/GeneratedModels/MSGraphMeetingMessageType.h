// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMeetingMessageTypeValue){

	MSGraphMeetingMessageTypeNone = 0,
	MSGraphMeetingMessageTypeMeetingRequest = 1,
	MSGraphMeetingMessageTypeMeetingCancelled = 2,
	MSGraphMeetingMessageTypeMeetingAccepted = 3,
	MSGraphMeetingMessageTypeMeetingTenativelyAccepted = 4,
	MSGraphMeetingMessageTypeMeetingDeclined = 5,
    MSGraphMeetingMessageTypeEndOfEnum
};

@interface MSGraphMeetingMessageType : NSObject

+(MSGraphMeetingMessageType*) none;
+(MSGraphMeetingMessageType*) meetingRequest;
+(MSGraphMeetingMessageType*) meetingCancelled;
+(MSGraphMeetingMessageType*) meetingAccepted;
+(MSGraphMeetingMessageType*) meetingTenativelyAccepted;
+(MSGraphMeetingMessageType*) meetingDeclined;

+(MSGraphMeetingMessageType*) UnknownEnumValue;

+(MSGraphMeetingMessageType*) meetingMessageTypeWithEnumValue:(MSGraphMeetingMessageTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMeetingMessageTypeValue enumValue;

@end


@interface NSString (MSGraphMeetingMessageType)

- (MSGraphMeetingMessageType*) toMSGraphMeetingMessageType;

@end
