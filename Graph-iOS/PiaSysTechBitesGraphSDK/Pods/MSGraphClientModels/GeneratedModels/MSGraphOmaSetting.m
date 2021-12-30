// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOmaSetting()
{
    NSString* _displayName;
    NSString* _omaSettingDescription;
    NSString* _omaUri;
}
@end

@implementation MSGraphOmaSetting

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) omaSettingDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setOmaSettingDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) omaUri
{
    return self.dictionary[@"omaUri"];
}

- (void) setOmaUri: (NSString*) val
{
    self.dictionary[@"omaUri"] = val;
}

@end
