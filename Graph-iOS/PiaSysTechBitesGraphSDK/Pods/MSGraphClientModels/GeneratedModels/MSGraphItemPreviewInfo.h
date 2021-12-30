// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphItemPreviewInfo : MSObject

@property (nullable, nonatomic, setter=setGetUrl:, getter=getUrl) NSString* getUrl;
@property (nullable, nonatomic, setter=setPostParameters:, getter=postParameters) NSString* postParameters;
@property (nullable, nonatomic, setter=setPostUrl:, getter=postUrl) NSString* postUrl;

@end
