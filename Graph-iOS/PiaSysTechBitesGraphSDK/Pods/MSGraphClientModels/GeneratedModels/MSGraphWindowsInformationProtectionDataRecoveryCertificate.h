// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWindowsInformationProtectionDataRecoveryCertificate : MSObject

@property (nullable, nonatomic, setter=setSubjectName:, getter=subjectName) NSString* subjectName;
@property (nullable, nonatomic, setter=setWindowsInformationProtectionDataRecoveryCertificateDescription:, getter=windowsInformationProtectionDataRecoveryCertificateDescription) NSString* windowsInformationProtectionDataRecoveryCertificateDescription;
@property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
@property (nullable, nonatomic, setter=setCertificate:, getter=certificate) NSString* certificate;

@end
