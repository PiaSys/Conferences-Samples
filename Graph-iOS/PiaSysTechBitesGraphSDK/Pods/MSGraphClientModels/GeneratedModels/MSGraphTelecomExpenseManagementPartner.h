// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphTelecomExpenseManagementPartner : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setUrl:, getter=url) NSString* url;
    @property (nonatomic, setter=setAppAuthorized:, getter=appAuthorized) BOOL appAuthorized;
    @property (nonatomic, setter=setEnabled:, getter=enabled) BOOL enabled;
    @property (nonnull, nonatomic, setter=setLastConnectionDateTime:, getter=lastConnectionDateTime) NSDate* lastConnectionDateTime;
  
@end
