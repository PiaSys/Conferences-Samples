// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSharedPCAccountDeletionPolicyTypeValue){

	MSGraphSharedPCAccountDeletionPolicyTypeImmediate = 0,
	MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThreshold = 1,
	MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThresholdOrInactiveThreshold = 2,
    MSGraphSharedPCAccountDeletionPolicyTypeEndOfEnum
};

@interface MSGraphSharedPCAccountDeletionPolicyType : NSObject

+(MSGraphSharedPCAccountDeletionPolicyType*) immediate;
+(MSGraphSharedPCAccountDeletionPolicyType*) diskSpaceThreshold;
+(MSGraphSharedPCAccountDeletionPolicyType*) diskSpaceThresholdOrInactiveThreshold;

+(MSGraphSharedPCAccountDeletionPolicyType*) UnknownEnumValue;

+(MSGraphSharedPCAccountDeletionPolicyType*) sharedPCAccountDeletionPolicyTypeWithEnumValue:(MSGraphSharedPCAccountDeletionPolicyTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSharedPCAccountDeletionPolicyTypeValue enumValue;

@end


@interface NSString (MSGraphSharedPCAccountDeletionPolicyType)

- (MSGraphSharedPCAccountDeletionPolicyType*) toMSGraphSharedPCAccountDeletionPolicyType;

@end
