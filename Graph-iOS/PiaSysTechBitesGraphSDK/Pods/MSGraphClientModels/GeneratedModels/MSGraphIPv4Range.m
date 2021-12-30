// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIPv4Range()
{
    NSString* _lowerAddress;
    NSString* _upperAddress;
}
@end

@implementation MSGraphIPv4Range

- (NSString*) lowerAddress
{
    return self.dictionary[@"lowerAddress"];
}

- (void) setLowerAddress: (NSString*) val
{
    self.dictionary[@"lowerAddress"] = val;
}

- (NSString*) upperAddress
{
    return self.dictionary[@"upperAddress"];
}

- (void) setUpperAddress: (NSString*) val
{
    self.dictionary[@"upperAddress"] = val;
}

@end
