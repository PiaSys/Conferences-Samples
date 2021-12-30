// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecentNotebook()
{
    NSString* _displayName;
    NSDate* _lastAccessedTime;
    MSGraphRecentNotebookLinks* _links;
    MSGraphOnenoteSourceService* _sourceService;
}
@end

@implementation MSGraphRecentNotebook

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

- (NSDate*) lastAccessedTime
{
    if(!_lastAccessedTime){
        _lastAccessedTime = [NSDate ms_dateFromString: self.dictionary[@"lastAccessedTime"]];
    }
    return _lastAccessedTime;
}

- (void) setLastAccessedTime: (NSDate*) val
{
    _lastAccessedTime = val;
    self.dictionary[@"lastAccessedTime"] = [val ms_toString];
}

- (MSGraphRecentNotebookLinks*) links
{
    if(!_links){
        _links = [[MSGraphRecentNotebookLinks alloc] initWithDictionary: self.dictionary[@"links"]];
    }
    return _links;
}

- (void) setLinks: (MSGraphRecentNotebookLinks*) val
{
    _links = val;
    self.dictionary[@"links"] = val;
}

- (MSGraphOnenoteSourceService*) sourceService
{
    if(!_sourceService){
        _sourceService = [self.dictionary[@"sourceService"] toMSGraphOnenoteSourceService];
    }
    return _sourceService;
}

- (void) setSourceService: (MSGraphOnenoteSourceService*) val
{
    _sourceService = val;
    self.dictionary[@"sourceService"] = val;
}

@end
