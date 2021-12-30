// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDirectoryRoleTemplate()
{
    NSString* _directoryRoleTemplateDescription;
    NSString* _displayName;
}
@end

@implementation MSGraphDirectoryRoleTemplate

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.directoryRoleTemplate";
    }
    return self;
}
- (NSString*) directoryRoleTemplateDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDirectoryRoleTemplateDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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


@end
