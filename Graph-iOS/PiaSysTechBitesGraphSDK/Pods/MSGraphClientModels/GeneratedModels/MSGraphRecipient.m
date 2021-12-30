// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecipient()
{
    MSGraphEmailAddress* _emailAddress;
}
@end

@implementation MSGraphRecipient

- (MSGraphEmailAddress*) emailAddress
{
    if(!_emailAddress){
        _emailAddress = [[MSGraphEmailAddress alloc] initWithDictionary: self.dictionary[@"emailAddress"]];
    }
    return _emailAddress;
}

- (void) setEmailAddress: (MSGraphEmailAddress*) val
{
    _emailAddress = val;
    self.dictionary[@"emailAddress"] = val;
}

@end
