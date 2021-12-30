// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphCloudAppSecurityState : MSObject

@property (nullable, nonatomic, setter=setDestinationServiceIp:, getter=destinationServiceIp) NSString* destinationServiceIp;
@property (nullable, nonatomic, setter=setDestinationServiceName:, getter=destinationServiceName) NSString* destinationServiceName;
@property (nullable, nonatomic, setter=setRiskScore:, getter=riskScore) NSString* riskScore;

@end
