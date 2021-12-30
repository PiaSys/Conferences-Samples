// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDateTimeTimeZone : MSObject

@property (nonnull, nonatomic, setter=setDateTime:, getter=dateTime) NSString* dateTime;
@property (nullable, nonatomic, setter=setTimeZone:, getter=timeZone) NSString* timeZone;

@end
