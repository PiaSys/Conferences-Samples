// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphCommsOperation.h"

@interface MSGraphRecordOperation : MSGraphCommsOperation

  @property (nullable, nonatomic, setter=setRecordingLocation:, getter=recordingLocation) NSString* recordingLocation;
    @property (nullable, nonatomic, setter=setRecordingAccessToken:, getter=recordingAccessToken) NSString* recordingAccessToken;
  
@end
