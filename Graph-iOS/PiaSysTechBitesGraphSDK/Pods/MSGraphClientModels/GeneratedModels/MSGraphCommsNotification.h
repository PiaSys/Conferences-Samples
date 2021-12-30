// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChangeType.h"


#import "MSObject.h"

@interface MSGraphCommsNotification : MSObject

@property (nonnull, nonatomic, setter=setChangeType:, getter=changeType) MSGraphChangeType* changeType;
@property (nonnull, nonatomic, setter=setResourceUrl:, getter=resourceUrl) NSString* resourceUrl;

@end
