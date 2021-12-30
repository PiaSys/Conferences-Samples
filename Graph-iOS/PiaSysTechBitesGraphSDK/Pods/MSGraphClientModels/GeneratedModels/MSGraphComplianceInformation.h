// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphCertificationControl; 


#import "MSObject.h"

@interface MSGraphComplianceInformation : MSObject

@property (nullable, nonatomic, setter=setCertificationControls:, getter=certificationControls) NSArray* certificationControls;
@property (nullable, nonatomic, setter=setCertificationName:, getter=certificationName) NSString* certificationName;

@end
