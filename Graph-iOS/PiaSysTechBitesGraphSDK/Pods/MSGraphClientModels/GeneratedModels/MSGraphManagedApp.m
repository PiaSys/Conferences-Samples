// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedApp()
{
    MSGraphManagedAppAvailability* _appAvailability;
    NSString* _version;
}
@end

@implementation MSGraphManagedApp

- (MSGraphManagedAppAvailability*) appAvailability
{
    if(!_appAvailability){
        _appAvailability = [self.dictionary[@"appAvailability"] toMSGraphManagedAppAvailability];
    }
    return _appAvailability;
}

- (void) setAppAvailability: (MSGraphManagedAppAvailability*) val
{
    _appAvailability = val;
    self.dictionary[@"appAvailability"] = val;
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
