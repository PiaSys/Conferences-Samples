// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphRoot; 


#import "MSObject.h"

@interface MSGraphSiteCollection : MSObject

@property (nullable, nonatomic, setter=setHostname:, getter=hostname) NSString* hostname;
@property (nullable, nonatomic, setter=setRoot:, getter=root) MSGraphRoot* root;

@end
