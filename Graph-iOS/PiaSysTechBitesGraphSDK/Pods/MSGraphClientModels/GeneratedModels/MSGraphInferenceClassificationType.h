// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphInferenceClassificationTypeValue){

	MSGraphInferenceClassificationTypeFocused = 0,
	MSGraphInferenceClassificationTypeOther = 1,
    MSGraphInferenceClassificationTypeEndOfEnum
};

@interface MSGraphInferenceClassificationType : NSObject

+(MSGraphInferenceClassificationType*) focused;
+(MSGraphInferenceClassificationType*) other;

+(MSGraphInferenceClassificationType*) UnknownEnumValue;

+(MSGraphInferenceClassificationType*) inferenceClassificationTypeWithEnumValue:(MSGraphInferenceClassificationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphInferenceClassificationTypeValue enumValue;

@end


@interface NSString (MSGraphInferenceClassificationType)

- (MSGraphInferenceClassificationType*) toMSGraphInferenceClassificationType;

@end
