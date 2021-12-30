// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedMobileApp()
{
    MSGraphMobileAppIdentifier* _mobileAppIdentifier;
    NSString* _version;
}
@end

@implementation MSGraphManagedMobileApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedMobileApp";
    }
    return self;
}
- (MSGraphMobileAppIdentifier*) mobileAppIdentifier
{
    if(!_mobileAppIdentifier){
        _mobileAppIdentifier = [[MSGraphMobileAppIdentifier alloc] initWithDictionary: self.dictionary[@"mobileAppIdentifier"]];
    }
    return _mobileAppIdentifier;
}

- (void) setMobileAppIdentifier: (MSGraphMobileAppIdentifier*) val
{
    _mobileAppIdentifier = val;
    self.dictionary[@"mobileAppIdentifier"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}


@end
