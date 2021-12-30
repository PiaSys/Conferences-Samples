// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCloudAppSecurityState()
{
    NSString* _destinationServiceIp;
    NSString* _destinationServiceName;
    NSString* _riskScore;
}
@end

@implementation MSGraphCloudAppSecurityState

- (NSString*) destinationServiceIp
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationServiceIp"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationServiceIp"];
}

- (void) setDestinationServiceIp: (NSString*) val
{
    self.dictionary[@"destinationServiceIp"] = val;
}

- (NSString*) destinationServiceName
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationServiceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationServiceName"];
}

- (void) setDestinationServiceName: (NSString*) val
{
    self.dictionary[@"destinationServiceName"] = val;
}

- (NSString*) riskScore
{
    if([[NSNull null] isEqual:self.dictionary[@"riskScore"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskScore"];
}

- (void) setRiskScore: (NSString*) val
{
    self.dictionary[@"riskScore"] = val;
}

@end
