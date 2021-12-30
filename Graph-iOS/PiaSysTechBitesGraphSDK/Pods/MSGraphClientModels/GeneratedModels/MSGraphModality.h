// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphModalityValue){

	MSGraphModalityAudio = 1,
	MSGraphModalityVideo = 2,
	MSGraphModalityVideoBasedScreenSharing = 3,
	MSGraphModalityData = 4,
	MSGraphModalityUnknownFutureValue = 5,
    MSGraphModalityEndOfEnum
};

@interface MSGraphModality : NSObject

+(MSGraphModality*) audio;
+(MSGraphModality*) video;
+(MSGraphModality*) videoBasedScreenSharing;
+(MSGraphModality*) data;
+(MSGraphModality*) unknownFutureValue;

+(MSGraphModality*) UnknownEnumValue;

+(MSGraphModality*) modalityWithEnumValue:(MSGraphModalityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphModalityValue enumValue;

@end


@interface NSString (MSGraphModality)

- (MSGraphModality*) toMSGraphModality;

@end
