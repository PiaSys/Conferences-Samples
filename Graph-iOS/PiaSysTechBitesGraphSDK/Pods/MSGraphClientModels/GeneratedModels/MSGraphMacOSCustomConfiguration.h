// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDeviceConfiguration.h"

@interface MSGraphMacOSCustomConfiguration : MSGraphDeviceConfiguration

  @property (nonnull, nonatomic, setter=setPayloadName:, getter=payloadName) NSString* payloadName;
    @property (nullable, nonatomic, setter=setPayloadFileName:, getter=payloadFileName) NSString* payloadFileName;
    @property (nonnull, nonatomic, setter=setPayload:, getter=payload) NSString* payload;
  
@end
