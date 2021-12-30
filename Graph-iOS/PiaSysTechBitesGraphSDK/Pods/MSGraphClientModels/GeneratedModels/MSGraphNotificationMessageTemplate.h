// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphLocalizedNotificationMessage; 
#import "MSGraphNotificationTemplateBrandingOptions.h"


#import "MSGraphEntity.h"

@interface MSGraphNotificationMessageTemplate : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setDefaultLocale:, getter=defaultLocale) NSString* defaultLocale;
    @property (nonnull, nonatomic, setter=setBrandingOptions:, getter=brandingOptions) MSGraphNotificationTemplateBrandingOptions* brandingOptions;
    @property (nullable, nonatomic, setter=setLocalizedNotificationMessages:, getter=localizedNotificationMessages) NSArray* localizedNotificationMessages;
  
@end
