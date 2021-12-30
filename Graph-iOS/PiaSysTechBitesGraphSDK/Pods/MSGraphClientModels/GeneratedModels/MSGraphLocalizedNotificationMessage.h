// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphLocalizedNotificationMessage : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setLocale:, getter=locale) NSString* locale;
    @property (nonnull, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nonnull, nonatomic, setter=setMessageTemplate:, getter=messageTemplate) NSString* messageTemplate;
    @property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
  
@end
