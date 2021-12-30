// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMailSearchFolder()
{
    BOOL _isSupported;
    BOOL _includeNestedFolders;
    NSArray* _sourceFolderIds;
    NSString* _filterQuery;
}
@end

@implementation MSGraphMailSearchFolder

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mailSearchFolder";
    }
    return self;
}
- (BOOL) isSupported
{
    _isSupported = [self.dictionary[@"isSupported"] boolValue];
    return _isSupported;
}

- (void) setIsSupported: (BOOL) val
{
    _isSupported = val;
    self.dictionary[@"isSupported"] = @(val);
}

- (BOOL) includeNestedFolders
{
    _includeNestedFolders = [self.dictionary[@"includeNestedFolders"] boolValue];
    return _includeNestedFolders;
}

- (void) setIncludeNestedFolders: (BOOL) val
{
    _includeNestedFolders = val;
    self.dictionary[@"includeNestedFolders"] = @(val);
}

- (NSArray*) sourceFolderIds
{
    if([[NSNull null] isEqual:self.dictionary[@"sourceFolderIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourceFolderIds"];
}

- (void) setSourceFolderIds: (NSArray*) val
{
    self.dictionary[@"sourceFolderIds"] = val;
}

- (NSString*) filterQuery
{
    if([[NSNull null] isEqual:self.dictionary[@"filterQuery"]])
    {
        return nil;
    }   
    return self.dictionary[@"filterQuery"];
}

- (void) setFilterQuery: (NSString*) val
{
    self.dictionary[@"filterQuery"] = val;
}


@end
