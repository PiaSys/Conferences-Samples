// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBooleanColumn, MSGraphCalculatedColumn, MSGraphChoiceColumn, MSGraphCurrencyColumn, MSGraphDateTimeColumn, MSGraphDefaultColumnValue, MSGraphLookupColumn, MSGraphNumberColumn, MSGraphPersonOrGroupColumn, MSGraphTextColumn; 


#import "MSGraphEntity.h"

@interface MSGraphColumnDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setBoolean:, getter=boolean) MSGraphBooleanColumn* boolean;
    @property (nullable, nonatomic, setter=setCalculated:, getter=calculated) MSGraphCalculatedColumn* calculated;
    @property (nullable, nonatomic, setter=setChoice:, getter=choice) MSGraphChoiceColumn* choice;
    @property (nullable, nonatomic, setter=setColumnGroup:, getter=columnGroup) NSString* columnGroup;
    @property (nullable, nonatomic, setter=setCurrency:, getter=currency) MSGraphCurrencyColumn* currency;
    @property (nullable, nonatomic, setter=setDateTime:, getter=dateTime) MSGraphDateTimeColumn* dateTime;
    @property (nullable, nonatomic, setter=setDefaultValue:, getter=defaultValue) MSGraphDefaultColumnValue* defaultValue;
    @property (nullable, nonatomic, setter=setColumnDefinitionDescription:, getter=columnDefinitionDescription) NSString* columnDefinitionDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setEnforceUniqueValues:, getter=enforceUniqueValues) BOOL enforceUniqueValues;
    @property (nonatomic, setter=setHidden:, getter=hidden) BOOL hidden;
    @property (nonatomic, setter=setIndexed:, getter=indexed) BOOL indexed;
    @property (nullable, nonatomic, setter=setLookup:, getter=lookup) MSGraphLookupColumn* lookup;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setNumber:, getter=number) MSGraphNumberColumn* number;
    @property (nullable, nonatomic, setter=setPersonOrGroup:, getter=personOrGroup) MSGraphPersonOrGroupColumn* personOrGroup;
    @property (nonatomic, setter=setColumnDefinitionReadOnly:, getter=columnDefinitionReadOnly) BOOL columnDefinitionReadOnly;
    @property (nonatomic, setter=setRequired:, getter=required) BOOL required;
    @property (nullable, nonatomic, setter=setText:, getter=text) MSGraphTextColumn* text;
  
@end
