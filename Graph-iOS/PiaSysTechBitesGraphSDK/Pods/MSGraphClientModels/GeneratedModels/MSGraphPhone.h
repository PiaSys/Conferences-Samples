// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPhoneType.h"


#import "MSObject.h"

@interface MSGraphPhone : MSObject

@property (nullable, nonatomic, setter=setType:, getter=type) MSGraphPhoneType* type;
@property (nullable, nonatomic, setter=setNumber:, getter=number) NSString* number;
@property (nullable, nonatomic, setter=setRegion:, getter=region) NSString* region;
@property (nullable, nonatomic, setter=setLanguage:, getter=language) NSString* language;

@end
