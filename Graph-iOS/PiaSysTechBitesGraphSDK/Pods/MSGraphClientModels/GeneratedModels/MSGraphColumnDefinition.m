// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphColumnDefinition()
{
    MSGraphBooleanColumn* _boolean;
    MSGraphCalculatedColumn* _calculated;
    MSGraphChoiceColumn* _choice;
    NSString* _columnGroup;
    MSGraphCurrencyColumn* _currency;
    MSGraphDateTimeColumn* _dateTime;
    MSGraphDefaultColumnValue* _defaultValue;
    NSString* _columnDefinitionDescription;
    NSString* _displayName;
    BOOL _enforceUniqueValues;
    BOOL _hidden;
    BOOL _indexed;
    MSGraphLookupColumn* _lookup;
    NSString* _name;
    MSGraphNumberColumn* _number;
    MSGraphPersonOrGroupColumn* _personOrGroup;
    BOOL _columnDefinitionReadOnly;
    BOOL _required;
    MSGraphTextColumn* _text;
}
@end

@implementation MSGraphColumnDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.columnDefinition";
    }
    return self;
}
- (MSGraphBooleanColumn*) boolean
{
    if(!_boolean){
        _boolean = [[MSGraphBooleanColumn alloc] initWithDictionary: self.dictionary[@"boolean"]];
    }
    return _boolean;
}

- (void) setBoolean: (MSGraphBooleanColumn*) val
{
    _boolean = val;
    self.dictionary[@"boolean"] = val;
}

- (MSGraphCalculatedColumn*) calculated
{
    if(!_calculated){
        _calculated = [[MSGraphCalculatedColumn alloc] initWithDictionary: self.dictionary[@"calculated"]];
    }
    return _calculated;
}

- (void) setCalculated: (MSGraphCalculatedColumn*) val
{
    _calculated = val;
    self.dictionary[@"calculated"] = val;
}

- (MSGraphChoiceColumn*) choice
{
    if(!_choice){
        _choice = [[MSGraphChoiceColumn alloc] initWithDictionary: self.dictionary[@"choice"]];
    }
    return _choice;
}

- (void) setChoice: (MSGraphChoiceColumn*) val
{
    _choice = val;
    self.dictionary[@"choice"] = val;
}

- (NSString*) columnGroup
{
    if([[NSNull null] isEqual:self.dictionary[@"columnGroup"]])
    {
        return nil;
    }   
    return self.dictionary[@"columnGroup"];
}

- (void) setColumnGroup: (NSString*) val
{
    self.dictionary[@"columnGroup"] = val;
}

- (MSGraphCurrencyColumn*) currency
{
    if(!_currency){
        _currency = [[MSGraphCurrencyColumn alloc] initWithDictionary: self.dictionary[@"currency"]];
    }
    return _currency;
}

- (void) setCurrency: (MSGraphCurrencyColumn*) val
{
    _currency = val;
    self.dictionary[@"currency"] = val;
}

- (MSGraphDateTimeColumn*) dateTime
{
    if(!_dateTime){
        _dateTime = [[MSGraphDateTimeColumn alloc] initWithDictionary: self.dictionary[@"dateTime"]];
    }
    return _dateTime;
}

- (void) setDateTime: (MSGraphDateTimeColumn*) val
{
    _dateTime = val;
    self.dictionary[@"dateTime"] = val;
}

- (MSGraphDefaultColumnValue*) defaultValue
{
    if(!_defaultValue){
        _defaultValue = [[MSGraphDefaultColumnValue alloc] initWithDictionary: self.dictionary[@"defaultValue"]];
    }
    return _defaultValue;
}

- (void) setDefaultValue: (MSGraphDefaultColumnValue*) val
{
    _defaultValue = val;
    self.dictionary[@"defaultValue"] = val;
}

- (NSString*) columnDefinitionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setColumnDefinitionDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) enforceUniqueValues
{
    _enforceUniqueValues = [self.dictionary[@"enforceUniqueValues"] boolValue];
    return _enforceUniqueValues;
}

- (void) setEnforceUniqueValues: (BOOL) val
{
    _enforceUniqueValues = val;
    self.dictionary[@"enforceUniqueValues"] = @(val);
}

- (BOOL) hidden
{
    _hidden = [self.dictionary[@"hidden"] boolValue];
    return _hidden;
}

- (void) setHidden: (BOOL) val
{
    _hidden = val;
    self.dictionary[@"hidden"] = @(val);
}

- (BOOL) indexed
{
    _indexed = [self.dictionary[@"indexed"] boolValue];
    return _indexed;
}

- (void) setIndexed: (BOOL) val
{
    _indexed = val;
    self.dictionary[@"indexed"] = @(val);
}

- (MSGraphLookupColumn*) lookup
{
    if(!_lookup){
        _lookup = [[MSGraphLookupColumn alloc] initWithDictionary: self.dictionary[@"lookup"]];
    }
    return _lookup;
}

- (void) setLookup: (MSGraphLookupColumn*) val
{
    _lookup = val;
    self.dictionary[@"lookup"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphNumberColumn*) number
{
    if(!_number){
        _number = [[MSGraphNumberColumn alloc] initWithDictionary: self.dictionary[@"number"]];
    }
    return _number;
}

- (void) setNumber: (MSGraphNumberColumn*) val
{
    _number = val;
    self.dictionary[@"number"] = val;
}

- (MSGraphPersonOrGroupColumn*) personOrGroup
{
    if(!_personOrGroup){
        _personOrGroup = [[MSGraphPersonOrGroupColumn alloc] initWithDictionary: self.dictionary[@"personOrGroup"]];
    }
    return _personOrGroup;
}

- (void) setPersonOrGroup: (MSGraphPersonOrGroupColumn*) val
{
    _personOrGroup = val;
    self.dictionary[@"personOrGroup"] = val;
}

- (BOOL) columnDefinitionReadOnly
{
    _columnDefinitionReadOnly = [self.dictionary[@"readOnly"] boolValue];
    return _columnDefinitionReadOnly;
}

- (void) setColumnDefinitionReadOnly: (BOOL) val
{
    _columnDefinitionReadOnly = val;
    self.dictionary[@"readOnly"] = @(val);
}

- (BOOL) required
{
    _required = [self.dictionary[@"required"] boolValue];
    return _required;
}

- (void) setRequired: (BOOL) val
{
    _required = val;
    self.dictionary[@"required"] = @(val);
}

- (MSGraphTextColumn*) text
{
    if(!_text){
        _text = [[MSGraphTextColumn alloc] initWithDictionary: self.dictionary[@"text"]];
    }
    return _text;
}

- (void) setText: (MSGraphTextColumn*) val
{
    _text = val;
    self.dictionary[@"text"] = val;
}


@end
