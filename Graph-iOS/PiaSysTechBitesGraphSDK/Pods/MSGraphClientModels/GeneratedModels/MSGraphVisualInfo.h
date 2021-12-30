// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphImageInfo, NSDictionary; 


#import "MSObject.h"

@interface MSGraphVisualInfo : MSObject

@property (nullable, nonatomic, setter=setAttribution:, getter=attribution) MSGraphImageInfo* attribution;
@property (nullable, nonatomic, setter=setBackgroundColor:, getter=backgroundColor) NSString* backgroundColor;
@property (nullable, nonatomic, setter=setVisualInfoDescription:, getter=visualInfoDescription) NSString* visualInfoDescription;
@property (nonnull, nonatomic, setter=setDisplayText:, getter=displayText) NSString* displayText;
@property (nullable, nonatomic, setter=setContent:, getter=content) NSDictionary* content;

@end
