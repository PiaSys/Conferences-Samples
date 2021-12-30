// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTextColumn : MSObject

@property (nonatomic, setter=setAllowMultipleLines:, getter=allowMultipleLines) BOOL allowMultipleLines;
@property (nonatomic, setter=setAppendChangesToExistingText:, getter=appendChangesToExistingText) BOOL appendChangesToExistingText;
@property (nonatomic, setter=setLinesForEditing:, getter=linesForEditing) int32_t linesForEditing;
@property (nonatomic, setter=setMaxLength:, getter=maxLength) int32_t maxLength;
@property (nullable, nonatomic, setter=setTextType:, getter=textType) NSString* textType;

@end
