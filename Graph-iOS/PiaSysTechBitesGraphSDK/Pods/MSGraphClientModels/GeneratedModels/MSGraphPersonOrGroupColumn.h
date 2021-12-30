// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPersonOrGroupColumn : MSObject

@property (nonatomic, setter=setAllowMultipleSelection:, getter=allowMultipleSelection) BOOL allowMultipleSelection;
@property (nullable, nonatomic, setter=setChooseFromType:, getter=chooseFromType) NSString* chooseFromType;
@property (nullable, nonatomic, setter=setDisplayAs:, getter=displayAs) NSString* displayAs;

@end
