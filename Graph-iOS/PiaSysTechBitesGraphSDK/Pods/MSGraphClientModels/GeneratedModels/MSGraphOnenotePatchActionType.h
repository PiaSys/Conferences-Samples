// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnenotePatchActionTypeValue){

	MSGraphOnenotePatchActionTypeReplace = 0,
	MSGraphOnenotePatchActionTypeAppend = 1,
	MSGraphOnenotePatchActionTypeDelete = 2,
	MSGraphOnenotePatchActionTypeInsert = 3,
	MSGraphOnenotePatchActionTypePrepend = 4,
    MSGraphOnenotePatchActionTypeEndOfEnum
};

@interface MSGraphOnenotePatchActionType : NSObject

+(MSGraphOnenotePatchActionType*) replace;
+(MSGraphOnenotePatchActionType*) append;
+(MSGraphOnenotePatchActionType*) delete;
+(MSGraphOnenotePatchActionType*) insert;
+(MSGraphOnenotePatchActionType*) prepend;

+(MSGraphOnenotePatchActionType*) UnknownEnumValue;

+(MSGraphOnenotePatchActionType*) onenotePatchActionTypeWithEnumValue:(MSGraphOnenotePatchActionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnenotePatchActionTypeValue enumValue;

@end


@interface NSString (MSGraphOnenotePatchActionType)

- (MSGraphOnenotePatchActionType*) toMSGraphOnenotePatchActionType;

@end
