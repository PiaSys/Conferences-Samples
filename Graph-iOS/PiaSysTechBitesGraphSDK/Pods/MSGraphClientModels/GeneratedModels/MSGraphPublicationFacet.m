// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPublicationFacet()
{
    NSString* _level;
    NSString* _versionId;
}
@end

@implementation MSGraphPublicationFacet

- (NSString*) level
{
    if([[NSNull null] isEqual:self.dictionary[@"level"]])
    {
        return nil;
    }   
    return self.dictionary[@"level"];
}

- (void) setLevel: (NSString*) val
{
    self.dictionary[@"level"] = val;
}

- (NSString*) versionId
{
    if([[NSNull null] isEqual:self.dictionary[@"versionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"versionId"];
}

- (void) setVersionId: (NSString*) val
{
    self.dictionary[@"versionId"] = val;
}

@end
