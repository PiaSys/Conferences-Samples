// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphWorkbookIcon, NSDictionary; 


#import "MSObject.h"

@interface MSGraphWorkbookFilterCriteria : MSObject

@property (nullable, nonatomic, setter=setColor:, getter=color) NSString* color;
@property (nullable, nonatomic, setter=setCriterion1:, getter=criterion1) NSString* criterion1;
@property (nullable, nonatomic, setter=setCriterion2:, getter=criterion2) NSString* criterion2;
@property (nonnull, nonatomic, setter=setDynamicCriteria:, getter=dynamicCriteria) NSString* dynamicCriteria;
@property (nonnull, nonatomic, setter=setFilterOn:, getter=filterOn) NSString* filterOn;
@property (nullable, nonatomic, setter=setIcon:, getter=icon) MSGraphWorkbookIcon* icon;
@property (nonnull, nonatomic, setter=setOperator:, getter=operator) NSString* operator;
@property (nullable, nonatomic, setter=setValues:, getter=values) NSDictionary* values;

@end
