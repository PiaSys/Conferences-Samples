// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSelectionLikelihoodInfoValue){

	MSGraphSelectionLikelihoodInfoNotSpecified = 0,
	MSGraphSelectionLikelihoodInfoHigh = 1,
    MSGraphSelectionLikelihoodInfoEndOfEnum
};

@interface MSGraphSelectionLikelihoodInfo : NSObject

+(MSGraphSelectionLikelihoodInfo*) notSpecified;
+(MSGraphSelectionLikelihoodInfo*) high;

+(MSGraphSelectionLikelihoodInfo*) UnknownEnumValue;

+(MSGraphSelectionLikelihoodInfo*) selectionLikelihoodInfoWithEnumValue:(MSGraphSelectionLikelihoodInfoValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSelectionLikelihoodInfoValue enumValue;

@end


@interface NSString (MSGraphSelectionLikelihoodInfo)

- (MSGraphSelectionLikelihoodInfo*) toMSGraphSelectionLikelihoodInfo;

@end
