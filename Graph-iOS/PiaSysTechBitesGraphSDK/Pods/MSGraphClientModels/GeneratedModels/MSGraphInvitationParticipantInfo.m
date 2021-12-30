// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInvitationParticipantInfo()
{
    NSString* _replacesCallId;
}
@end

@implementation MSGraphInvitationParticipantInfo

- (NSString*) replacesCallId
{
    if([[NSNull null] isEqual:self.dictionary[@"replacesCallId"]])
    {
        return nil;
    }   
    return self.dictionary[@"replacesCallId"];
}

- (void) setReplacesCallId: (NSString*) val
{
    self.dictionary[@"replacesCallId"] = val;
}

@end
