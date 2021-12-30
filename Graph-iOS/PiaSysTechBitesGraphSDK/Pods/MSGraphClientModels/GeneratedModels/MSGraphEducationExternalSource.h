// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationExternalSourceValue){

	MSGraphEducationExternalSourceSis = 0,
	MSGraphEducationExternalSourceManual = 1,
	MSGraphEducationExternalSourceUnknownFutureValue = 2,
    MSGraphEducationExternalSourceEndOfEnum
};

@interface MSGraphEducationExternalSource : NSObject

+(MSGraphEducationExternalSource*) sis;
+(MSGraphEducationExternalSource*) manual;
+(MSGraphEducationExternalSource*) unknownFutureValue;

+(MSGraphEducationExternalSource*) UnknownEnumValue;

+(MSGraphEducationExternalSource*) educationExternalSourceWithEnumValue:(MSGraphEducationExternalSourceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationExternalSourceValue enumValue;

@end


@interface NSString (MSGraphEducationExternalSource)

- (MSGraphEducationExternalSource*) toMSGraphEducationExternalSource;

@end
