// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMicrosoftStoreForBusinessApp()
{
    int32_t _usedLicenseCount;
    int32_t _totalLicenseCount;
    NSString* _productKey;
    MSGraphMicrosoftStoreForBusinessLicenseType* _licenseType;
    NSString* _packageIdentityName;
}
@end

@implementation MSGraphMicrosoftStoreForBusinessApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.microsoftStoreForBusinessApp";
    }
    return self;
}
- (int32_t) usedLicenseCount
{
    _usedLicenseCount = [self.dictionary[@"usedLicenseCount"] intValue];
    return _usedLicenseCount;
}

- (void) setUsedLicenseCount: (int32_t) val
{
    _usedLicenseCount = val;
    self.dictionary[@"usedLicenseCount"] = @(val);
}

- (int32_t) totalLicenseCount
{
    _totalLicenseCount = [self.dictionary[@"totalLicenseCount"] intValue];
    return _totalLicenseCount;
}

- (void) setTotalLicenseCount: (int32_t) val
{
    _totalLicenseCount = val;
    self.dictionary[@"totalLicenseCount"] = @(val);
}

- (NSString*) productKey
{
    if([[NSNull null] isEqual:self.dictionary[@"productKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"productKey"];
}

- (void) setProductKey: (NSString*) val
{
    self.dictionary[@"productKey"] = val;
}

- (MSGraphMicrosoftStoreForBusinessLicenseType*) licenseType
{
    if(!_licenseType){
        _licenseType = [self.dictionary[@"licenseType"] toMSGraphMicrosoftStoreForBusinessLicenseType];
    }
    return _licenseType;
}

- (void) setLicenseType: (MSGraphMicrosoftStoreForBusinessLicenseType*) val
{
    _licenseType = val;
    self.dictionary[@"licenseType"] = val;
}

- (NSString*) packageIdentityName
{
    if([[NSNull null] isEqual:self.dictionary[@"packageIdentityName"]])
    {
        return nil;
    }   
    return self.dictionary[@"packageIdentityName"];
}

- (void) setPackageIdentityName: (NSString*) val
{
    self.dictionary[@"packageIdentityName"] = val;
}


@end
