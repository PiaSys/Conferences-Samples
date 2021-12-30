// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphMobileApp.h"

@interface MSGraphWebApp : MSGraphMobileApp

  @property (nullable, nonatomic, setter=setAppUrl:, getter=appUrl) NSString* appUrl;
    @property (nonatomic, setter=setUseManagedBrowser:, getter=useManagedBrowser) BOOL useManagedBrowser;
  
@end
