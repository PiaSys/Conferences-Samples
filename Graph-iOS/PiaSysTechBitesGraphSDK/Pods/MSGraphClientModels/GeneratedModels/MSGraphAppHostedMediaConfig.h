// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphMediaConfig.h"

@interface MSGraphAppHostedMediaConfig : MSGraphMediaConfig

@property (nullable, nonatomic, setter=setBlob:, getter=blob) NSString* blob;

@end
