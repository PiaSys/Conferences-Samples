// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRegistryKeyState()
{
    MSGraphRegistryHive* _hive;
    NSString* _key;
    NSString* _oldKey;
    NSString* _oldValueData;
    NSString* _oldValueName;
    MSGraphRegistryOperation* _operation;
    int32_t _processId;
    NSString* _valueData;
    NSString* _valueName;
    MSGraphRegistryValueType* _valueType;
}
@end

@implementation MSGraphRegistryKeyState

- (MSGraphRegistryHive*) hive
{
    if(!_hive){
        _hive = [self.dictionary[@"hive"] toMSGraphRegistryHive];
    }
    return _hive;
}

- (void) setHive: (MSGraphRegistryHive*) val
{
    _hive = val;
    self.dictionary[@"hive"] = val;
}

- (NSString*) key
{
    if([[NSNull null] isEqual:self.dictionary[@"key"]])
    {
        return nil;
    }   
    return self.dictionary[@"key"];
}

- (void) setKey: (NSString*) val
{
    self.dictionary[@"key"] = val;
}

- (NSString*) oldKey
{
    if([[NSNull null] isEqual:self.dictionary[@"oldKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"oldKey"];
}

- (void) setOldKey: (NSString*) val
{
    self.dictionary[@"oldKey"] = val;
}

- (NSString*) oldValueData
{
    if([[NSNull null] isEqual:self.dictionary[@"oldValueData"]])
    {
        return nil;
    }   
    return self.dictionary[@"oldValueData"];
}

- (void) setOldValueData: (NSString*) val
{
    self.dictionary[@"oldValueData"] = val;
}

- (NSString*) oldValueName
{
    if([[NSNull null] isEqual:self.dictionary[@"oldValueName"]])
    {
        return nil;
    }   
    return self.dictionary[@"oldValueName"];
}

- (void) setOldValueName: (NSString*) val
{
    self.dictionary[@"oldValueName"] = val;
}

- (MSGraphRegistryOperation*) operation
{
    if(!_operation){
        _operation = [self.dictionary[@"operation"] toMSGraphRegistryOperation];
    }
    return _operation;
}

- (void) setOperation: (MSGraphRegistryOperation*) val
{
    _operation = val;
    self.dictionary[@"operation"] = val;
}

- (int32_t) processId
{
    _processId = [self.dictionary[@"processId"] intValue];
    return _processId;
}

- (void) setProcessId: (int32_t) val
{
    _processId = val;
    self.dictionary[@"processId"] = @(val);
}

- (NSString*) valueData
{
    if([[NSNull null] isEqual:self.dictionary[@"valueData"]])
    {
        return nil;
    }   
    return self.dictionary[@"valueData"];
}

- (void) setValueData: (NSString*) val
{
    self.dictionary[@"valueData"] = val;
}

- (NSString*) valueName
{
    if([[NSNull null] isEqual:self.dictionary[@"valueName"]])
    {
        return nil;
    }   
    return self.dictionary[@"valueName"];
}

- (void) setValueName: (NSString*) val
{
    self.dictionary[@"valueName"] = val;
}

- (MSGraphRegistryValueType*) valueType
{
    if(!_valueType){
        _valueType = [self.dictionary[@"valueType"] toMSGraphRegistryValueType];
    }
    return _valueType;
}

- (void) setValueType: (MSGraphRegistryValueType*) val
{
    _valueType = val;
    self.dictionary[@"valueType"] = val;
}

@end
