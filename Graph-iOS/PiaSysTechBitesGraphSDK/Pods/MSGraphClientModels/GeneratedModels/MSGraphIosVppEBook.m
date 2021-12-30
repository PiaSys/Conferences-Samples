// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosVppEBook()
{
    NSString* _vppTokenId;
    NSString* _appleId;
    NSString* _vppOrganizationName;
    NSArray* _genres;
    NSString* _language;
    NSString* _seller;
    int32_t _totalLicenseCount;
    int32_t _usedLicenseCount;
}
@end

@implementation MSGraphIosVppEBook

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosVppEBook";
    }
    return self;
}
- (NSString*) vppTokenId
{
    return self.dictionary[@"vppTokenId"];
}

- (void) setVppTokenId: (NSString*) val
{
    self.dictionary[@"vppTokenId"] = val;
}

- (NSString*) appleId
{
    if([[NSNull null] isEqual:self.dictionary[@"appleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appleId"];
}

- (void) setAppleId: (NSString*) val
{
    self.dictionary[@"appleId"] = val;
}

- (NSString*) vppOrganizationName
{
    if([[NSNull null] isEqual:self.dictionary[@"vppOrganizationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"vppOrganizationName"];
}

- (void) setVppOrganizationName: (NSString*) val
{
    self.dictionary[@"vppOrganizationName"] = val;
}

- (NSArray*) genres
{
    if([[NSNull null] isEqual:self.dictionary[@"genres"]])
    {
        return nil;
    }   
    return self.dictionary[@"genres"];
}

- (void) setGenres: (NSArray*) val
{
    self.dictionary[@"genres"] = val;
}

- (NSString*) language
{
    if([[NSNull null] isEqual:self.dictionary[@"language"]])
    {
        return nil;
    }   
    return self.dictionary[@"language"];
}

- (void) setLanguage: (NSString*) val
{
    self.dictionary[@"language"] = val;
}

- (NSString*) seller
{
    if([[NSNull null] isEqual:self.dictionary[@"seller"]])
    {
        return nil;
    }   
    return self.dictionary[@"seller"];
}

- (void) setSeller: (NSString*) val
{
    self.dictionary[@"seller"] = val;
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


@end
