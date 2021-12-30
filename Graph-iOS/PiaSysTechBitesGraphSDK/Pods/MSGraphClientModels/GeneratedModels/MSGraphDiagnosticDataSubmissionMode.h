// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDiagnosticDataSubmissionModeValue){

	MSGraphDiagnosticDataSubmissionModeUserDefined = 0,
	MSGraphDiagnosticDataSubmissionModeNone = 1,
	MSGraphDiagnosticDataSubmissionModeBasic = 2,
	MSGraphDiagnosticDataSubmissionModeEnhanced = 3,
	MSGraphDiagnosticDataSubmissionModeFull = 4,
    MSGraphDiagnosticDataSubmissionModeEndOfEnum
};

@interface MSGraphDiagnosticDataSubmissionMode : NSObject

+(MSGraphDiagnosticDataSubmissionMode*) userDefined;
+(MSGraphDiagnosticDataSubmissionMode*) none;
+(MSGraphDiagnosticDataSubmissionMode*) basic;
+(MSGraphDiagnosticDataSubmissionMode*) enhanced;
+(MSGraphDiagnosticDataSubmissionMode*) full;

+(MSGraphDiagnosticDataSubmissionMode*) UnknownEnumValue;

+(MSGraphDiagnosticDataSubmissionMode*) diagnosticDataSubmissionModeWithEnumValue:(MSGraphDiagnosticDataSubmissionModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDiagnosticDataSubmissionModeValue enumValue;

@end


@interface NSString (MSGraphDiagnosticDataSubmissionMode)

- (MSGraphDiagnosticDataSubmissionMode*) toMSGraphDiagnosticDataSubmissionMode;

@end
