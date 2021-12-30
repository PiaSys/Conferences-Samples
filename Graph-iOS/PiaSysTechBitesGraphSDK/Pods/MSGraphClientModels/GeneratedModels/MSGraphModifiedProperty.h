// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphModifiedProperty : MSObject

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setOldValue:, getter=oldValue) NSString* oldValue;
@property (nullable, nonatomic, setter=setNewValue:, getter=getNewValue) NSString* newValue;

@end
