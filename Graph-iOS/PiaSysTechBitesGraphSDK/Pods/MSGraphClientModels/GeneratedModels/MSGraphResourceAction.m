// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResourceAction()
{
    NSArray* _allowedResourceActions;
    NSArray* _notAllowedResourceActions;
}
@end

@implementation MSGraphResourceAction

- (NSArray*) allowedResourceActions
{
    if([[NSNull null] isEqual:self.dictionary[@"allowedResourceActions"]])
    {
        return nil;
    }   
    return self.dictionary[@"allowedResourceActions"];
}

- (void) setAllowedResourceActions: (NSArray*) val
{
    self.dictionary[@"allowedResourceActions"] = val;
}

- (NSArray*) notAllowedResourceActions
{
    if([[NSNull null] isEqual:self.dictionary[@"notAllowedResourceActions"]])
    {
        return nil;
    }   
    return self.dictionary[@"notAllowedResourceActions"];
}

- (void) setNotAllowedResourceActions: (NSArray*) val
{
    self.dictionary[@"notAllowedResourceActions"] = val;
}

@end
