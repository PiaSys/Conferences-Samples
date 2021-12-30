// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphKeyValue : MSObject

@property (nullable, nonatomic, setter=setKey:, getter=key) NSString* key;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
