// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphLocaleInfo : MSObject

@property (nullable, nonatomic, setter=setLocale:, getter=locale) NSString* locale;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;

@end
