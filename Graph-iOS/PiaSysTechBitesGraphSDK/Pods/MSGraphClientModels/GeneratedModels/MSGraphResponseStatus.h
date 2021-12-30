// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphResponseType.h"


#import "MSObject.h"

@interface MSGraphResponseStatus : MSObject

@property (nullable, nonatomic, setter=setResponse:, getter=response) MSGraphResponseType* response;
@property (nullable, nonatomic, setter=setTime:, getter=time) NSDate* time;

@end
