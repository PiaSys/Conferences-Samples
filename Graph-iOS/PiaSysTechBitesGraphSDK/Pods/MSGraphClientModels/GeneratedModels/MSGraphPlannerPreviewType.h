// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPlannerPreviewTypeValue){

	MSGraphPlannerPreviewTypeAutomatic = 0,
	MSGraphPlannerPreviewTypeNoPreview = 1,
	MSGraphPlannerPreviewTypeChecklist = 2,
	MSGraphPlannerPreviewTypeDescription = 3,
	MSGraphPlannerPreviewTypeReference = 4,
    MSGraphPlannerPreviewTypeEndOfEnum
};

@interface MSGraphPlannerPreviewType : NSObject

+(MSGraphPlannerPreviewType*) automatic;
+(MSGraphPlannerPreviewType*) noPreview;
+(MSGraphPlannerPreviewType*) checklist;
+(MSGraphPlannerPreviewType*) description;
+(MSGraphPlannerPreviewType*) reference;

+(MSGraphPlannerPreviewType*) UnknownEnumValue;

+(MSGraphPlannerPreviewType*) plannerPreviewTypeWithEnumValue:(MSGraphPlannerPreviewTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPlannerPreviewTypeValue enumValue;

@end


@interface NSString (MSGraphPlannerPreviewType)

- (MSGraphPlannerPreviewType*) toMSGraphPlannerPreviewType;

@end
