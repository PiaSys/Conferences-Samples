// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPersonType : MSObject

@property (nullable, nonatomic, setter=setClass:, getter=class) NSString* class;
@property (nullable, nonatomic, setter=setSubclass:, getter=subclass) NSString* subclass;

@end
