// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResetPasscodeActionResult()
{
    NSString* _passcode;
}
@end

@implementation MSGraphResetPasscodeActionResult

- (NSString*) passcode
{
    if([[NSNull null] isEqual:self.dictionary[@"passcode"]])
    {
        return nil;
    }   
    return self.dictionary[@"passcode"];
}

- (void) setPasscode: (NSString*) val
{
    self.dictionary[@"passcode"] = val;
}

@end
