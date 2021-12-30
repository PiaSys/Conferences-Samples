// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphFreeBusyError : MSObject

@property (nullable, nonatomic, setter=setMessage:, getter=message) NSString* message;
@property (nullable, nonatomic, setter=setResponseCode:, getter=responseCode) NSString* responseCode;

@end
