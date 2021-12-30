// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRegistryHive.h"
#import "MSGraphRegistryOperation.h"
#import "MSGraphRegistryValueType.h"


#import "MSObject.h"

@interface MSGraphRegistryKeyState : MSObject

@property (nullable, nonatomic, setter=setHive:, getter=hive) MSGraphRegistryHive* hive;
@property (nullable, nonatomic, setter=setKey:, getter=key) NSString* key;
@property (nullable, nonatomic, setter=setOldKey:, getter=oldKey) NSString* oldKey;
@property (nullable, nonatomic, setter=setOldValueData:, getter=oldValueData) NSString* oldValueData;
@property (nullable, nonatomic, setter=setOldValueName:, getter=oldValueName) NSString* oldValueName;
@property (nullable, nonatomic, setter=setOperation:, getter=operation) MSGraphRegistryOperation* operation;
@property (nonatomic, setter=setProcessId:, getter=processId) int32_t processId;
@property (nullable, nonatomic, setter=setValueData:, getter=valueData) NSString* valueData;
@property (nullable, nonatomic, setter=setValueName:, getter=valueName) NSString* valueName;
@property (nullable, nonatomic, setter=setValueType:, getter=valueType) MSGraphRegistryValueType* valueType;

@end
