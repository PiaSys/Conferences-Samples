// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphMobileLobApp.h"

@interface MSGraphWindowsMobileMSI : MSGraphMobileLobApp

  @property (nullable, nonatomic, setter=setCommandLine:, getter=commandLine) NSString* commandLine;
    @property (nullable, nonatomic, setter=setProductCode:, getter=productCode) NSString* productCode;
    @property (nullable, nonatomic, setter=setProductVersion:, getter=productVersion) NSString* productVersion;
    @property (nonatomic, setter=setIgnoreVersionDetection:, getter=ignoreVersionDetection) BOOL ignoreVersionDetection;
  
@end
