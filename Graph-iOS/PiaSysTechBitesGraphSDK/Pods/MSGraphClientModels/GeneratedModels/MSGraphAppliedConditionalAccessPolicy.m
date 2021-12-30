// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppliedConditionalAccessPolicy()
{
    NSString* _appliedConditionalAccessPolicyId;
    NSString* _displayName;
    NSArray* _enforcedGrantControls;
    NSArray* _enforcedSessionControls;
    MSGraphAppliedConditionalAccessPolicyResult* _result;
}
@end

@implementation MSGraphAppliedConditionalAccessPolicy

- (NSString*) appliedConditionalAccessPolicyId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setAppliedConditionalAccessPolicyId: (NSString*) val
{
    self.dictionary[@"id"] = val;
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

- (NSArray*) enforcedGrantControls
{
    if([[NSNull null] isEqual:self.dictionary[@"enforcedGrantControls"]])
    {
        return nil;
    }   
    return self.dictionary[@"enforcedGrantControls"];
}

- (void) setEnforcedGrantControls: (NSArray*) val
{
    self.dictionary[@"enforcedGrantControls"] = val;
}

- (NSArray*) enforcedSessionControls
{
    if([[NSNull null] isEqual:self.dictionary[@"enforcedSessionControls"]])
    {
        return nil;
    }   
    return self.dictionary[@"enforcedSessionControls"];
}

- (void) setEnforcedSessionControls: (NSArray*) val
{
    self.dictionary[@"enforcedSessionControls"] = val;
}

- (MSGraphAppliedConditionalAccessPolicyResult*) result
{
    if(!_result){
        _result = [self.dictionary[@"result"] toMSGraphAppliedConditionalAccessPolicyResult];
    }
    return _result;
}

- (void) setResult: (MSGraphAppliedConditionalAccessPolicyResult*) val
{
    _result = val;
    self.dictionary[@"result"] = val;
}

@end
