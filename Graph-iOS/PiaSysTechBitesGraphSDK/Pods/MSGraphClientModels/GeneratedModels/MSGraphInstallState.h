// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphInstallStateValue){

	MSGraphInstallStateNotApplicable = 0,
	MSGraphInstallStateInstalled = 1,
	MSGraphInstallStateFailed = 2,
	MSGraphInstallStateNotInstalled = 3,
	MSGraphInstallStateUninstallFailed = 4,
	MSGraphInstallStateUnknown = 5,
    MSGraphInstallStateEndOfEnum
};

@interface MSGraphInstallState : NSObject

+(MSGraphInstallState*) notApplicable;
+(MSGraphInstallState*) installed;
+(MSGraphInstallState*) failed;
+(MSGraphInstallState*) notInstalled;
+(MSGraphInstallState*) uninstallFailed;
+(MSGraphInstallState*) unknown;

+(MSGraphInstallState*) UnknownEnumValue;

+(MSGraphInstallState*) installStateWithEnumValue:(MSGraphInstallStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphInstallStateValue enumValue;

@end


@interface NSString (MSGraphInstallState)

- (MSGraphInstallState*) toMSGraphInstallState;

@end
