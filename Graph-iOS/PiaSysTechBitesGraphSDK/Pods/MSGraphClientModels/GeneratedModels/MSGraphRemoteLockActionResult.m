// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRemoteLockActionResult()
{
    NSString* _unlockPin;
}
@end

@implementation MSGraphRemoteLockActionResult

- (NSString*) unlockPin
{
    if([[NSNull null] isEqual:self.dictionary[@"unlockPin"]])
    {
        return nil;
    }   
    return self.dictionary[@"unlockPin"];
}

- (void) setUnlockPin: (NSString*) val
{
    self.dictionary[@"unlockPin"] = val;
}

@end
