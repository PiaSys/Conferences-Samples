// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphGenericError; 


#import "MSObject.h"

@interface MSGraphConvertIdResult : MSObject

@property (nullable, nonatomic, setter=setSourceId:, getter=sourceId) NSString* sourceId;
@property (nullable, nonatomic, setter=setTargetId:, getter=targetId) NSString* targetId;
@property (nullable, nonatomic, setter=setErrorDetails:, getter=errorDetails) MSGraphGenericError* errorDetails;

@end
