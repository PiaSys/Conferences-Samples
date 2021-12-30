// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDirectoryObjectPartnerReference()
{
    NSString* _directoryObjectPartnerReferenceDescription;
    NSString* _displayName;
    NSString* _externalPartnerTenantId;
    NSString* _objectType;
}
@end

@implementation MSGraphDirectoryObjectPartnerReference

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.directoryObjectPartnerReference";
    }
    return self;
}
- (NSString*) directoryObjectPartnerReferenceDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDirectoryObjectPartnerReferenceDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) externalPartnerTenantId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalPartnerTenantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalPartnerTenantId"];
}

- (void) setExternalPartnerTenantId: (NSString*) val
{
    self.dictionary[@"externalPartnerTenantId"] = val;
}

- (NSString*) objectType
{
    if([[NSNull null] isEqual:self.dictionary[@"objectType"]])
    {
        return nil;
    }   
    return self.dictionary[@"objectType"];
}

- (void) setObjectType: (NSString*) val
{
    self.dictionary[@"objectType"] = val;
}


@end
