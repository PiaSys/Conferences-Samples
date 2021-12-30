// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMessageRule()
{
    NSString* _displayName;
    int32_t _sequence;
    MSGraphMessageRulePredicates* _conditions;
    MSGraphMessageRuleActions* _actions;
    MSGraphMessageRulePredicates* _exceptions;
    BOOL _isEnabled;
    BOOL _hasError;
    BOOL _isReadOnly;
}
@end

@implementation MSGraphMessageRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.messageRule";
    }
    return self;
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

- (int32_t) sequence
{
    _sequence = [self.dictionary[@"sequence"] intValue];
    return _sequence;
}

- (void) setSequence: (int32_t) val
{
    _sequence = val;
    self.dictionary[@"sequence"] = @(val);
}

- (MSGraphMessageRulePredicates*) conditions
{
    if(!_conditions){
        _conditions = [[MSGraphMessageRulePredicates alloc] initWithDictionary: self.dictionary[@"conditions"]];
    }
    return _conditions;
}

- (void) setConditions: (MSGraphMessageRulePredicates*) val
{
    _conditions = val;
    self.dictionary[@"conditions"] = val;
}

- (MSGraphMessageRuleActions*) actions
{
    if(!_actions){
        _actions = [[MSGraphMessageRuleActions alloc] initWithDictionary: self.dictionary[@"actions"]];
    }
    return _actions;
}

- (void) setActions: (MSGraphMessageRuleActions*) val
{
    _actions = val;
    self.dictionary[@"actions"] = val;
}

- (MSGraphMessageRulePredicates*) exceptions
{
    if(!_exceptions){
        _exceptions = [[MSGraphMessageRulePredicates alloc] initWithDictionary: self.dictionary[@"exceptions"]];
    }
    return _exceptions;
}

- (void) setExceptions: (MSGraphMessageRulePredicates*) val
{
    _exceptions = val;
    self.dictionary[@"exceptions"] = val;
}

- (BOOL) isEnabled
{
    _isEnabled = [self.dictionary[@"isEnabled"] boolValue];
    return _isEnabled;
}

- (void) setIsEnabled: (BOOL) val
{
    _isEnabled = val;
    self.dictionary[@"isEnabled"] = @(val);
}

- (BOOL) hasError
{
    _hasError = [self.dictionary[@"hasError"] boolValue];
    return _hasError;
}

- (void) setHasError: (BOOL) val
{
    _hasError = val;
    self.dictionary[@"hasError"] = @(val);
}

- (BOOL) isReadOnly
{
    _isReadOnly = [self.dictionary[@"isReadOnly"] boolValue];
    return _isReadOnly;
}

- (void) setIsReadOnly: (BOOL) val
{
    _isReadOnly = val;
    self.dictionary[@"isReadOnly"] = @(val);
}


@end
