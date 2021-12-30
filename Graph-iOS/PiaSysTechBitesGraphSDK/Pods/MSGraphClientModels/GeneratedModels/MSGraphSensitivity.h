// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSensitivityValue){

	MSGraphSensitivityNormal = 0,
	MSGraphSensitivityPersonal = 1,
	MSGraphSensitivityPrivate = 2,
	MSGraphSensitivityConfidential = 3,
    MSGraphSensitivityEndOfEnum
};

@interface MSGraphSensitivity : NSObject

+(MSGraphSensitivity*) normal;
+(MSGraphSensitivity*) personal;
+(MSGraphSensitivity*) private;
+(MSGraphSensitivity*) confidential;

+(MSGraphSensitivity*) UnknownEnumValue;

+(MSGraphSensitivity*) sensitivityWithEnumValue:(MSGraphSensitivityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSensitivityValue enumValue;

@end


@interface NSString (MSGraphSensitivity)

- (MSGraphSensitivity*) toMSGraphSensitivity;

@end
