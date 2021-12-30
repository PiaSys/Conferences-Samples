// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionDataRecoveryCertificate()
{
    NSString* _subjectName;
    NSString* _windowsInformationProtectionDataRecoveryCertificateDescription;
    NSDate* _expirationDateTime;
    NSString* _certificate;
}
@end

@implementation MSGraphWindowsInformationProtectionDataRecoveryCertificate

- (NSString*) subjectName
{
    if([[NSNull null] isEqual:self.dictionary[@"subjectName"]])
    {
        return nil;
    }   
    return self.dictionary[@"subjectName"];
}

- (void) setSubjectName: (NSString*) val
{
    self.dictionary[@"subjectName"] = val;
}

- (NSString*) windowsInformationProtectionDataRecoveryCertificateDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setWindowsInformationProtectionDataRecoveryCertificateDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSString*) certificate
{
    if([[NSNull null] isEqual:self.dictionary[@"certificate"]])
    {
        return nil;
    }   
    return self.dictionary[@"certificate"];
}

- (void) setCertificate: (NSString*) val
{
    self.dictionary[@"certificate"] = val;
}

@end
