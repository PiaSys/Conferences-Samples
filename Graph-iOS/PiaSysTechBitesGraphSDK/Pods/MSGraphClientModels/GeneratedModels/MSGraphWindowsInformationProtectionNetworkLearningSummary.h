// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphWindowsInformationProtectionNetworkLearningSummary : MSGraphEntity

  @property (nullable, nonatomic, setter=setUrl:, getter=url) NSString* url;
    @property (nonatomic, setter=setDeviceCount:, getter=deviceCount) int32_t deviceCount;
  
@end
