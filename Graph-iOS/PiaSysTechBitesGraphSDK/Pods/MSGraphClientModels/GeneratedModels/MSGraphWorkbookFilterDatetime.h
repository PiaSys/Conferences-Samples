// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWorkbookFilterDatetime : MSObject

@property (nullable, nonatomic, setter=setDate:, getter=date) NSString* date;
@property (nonnull, nonatomic, setter=setSpecificity:, getter=specificity) NSString* specificity;

@end
