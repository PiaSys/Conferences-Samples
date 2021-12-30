// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWorkbookIcon : MSObject

@property (nonatomic, setter=setIndex:, getter=index) int32_t index;
@property (nonnull, nonatomic, setter=setSet:, getter=set) NSString* set;

@end
