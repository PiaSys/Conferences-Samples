// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphChoiceColumn : MSObject

@property (nonatomic, setter=setAllowTextEntry:, getter=allowTextEntry) BOOL allowTextEntry;
@property (nullable, nonatomic, setter=setChoices:, getter=choices) NSArray* choices;
@property (nullable, nonatomic, setter=setDisplayAs:, getter=displayAs) NSString* displayAs;

@end
