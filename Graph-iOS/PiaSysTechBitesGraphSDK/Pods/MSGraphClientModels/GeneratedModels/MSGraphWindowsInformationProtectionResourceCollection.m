// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionResourceCollection()
{
    NSString* _displayName;
    NSArray* _resources;
}
@end

@implementation MSGraphWindowsInformationProtectionResourceCollection

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSArray*) resources
{
    if([[NSNull null] isEqual:self.dictionary[@"resources"]])
    {
        return nil;
    }   
    return self.dictionary[@"resources"];
}

- (void) setResources: (NSArray*) val
{
    self.dictionary[@"resources"] = val;
}

@end
