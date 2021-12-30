// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileLobApp()
{
    NSString* _committedContentVersion;
    NSString* _fileName;
    int64_t _size;
    NSArray* _contentVersions;
}
@end

@implementation MSGraphMobileLobApp

- (NSString*) committedContentVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"committedContentVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"committedContentVersion"];
}

- (void) setCommittedContentVersion: (NSString*) val
{
    self.dictionary[@"committedContentVersion"] = val;
}

- (NSString*) fileName
{
    if([[NSNull null] isEqual:self.dictionary[@"fileName"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileName"];
}

- (void) setFileName: (NSString*) val
{
    self.dictionary[@"fileName"] = val;
}

- (int64_t) size
{
    _size = [self.dictionary[@"size"] longLongValue];
    return _size;
}

- (void) setSize: (int64_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

- (NSArray*) contentVersions
{
    if(!_contentVersions){
        
    NSMutableArray *contentVersionsResult = [NSMutableArray array];
    NSArray *contentVersions = self.dictionary[@"contentVersions"];

    if ([contentVersions isKindOfClass:[NSArray class]]){
        for (id tempMobileAppContent in contentVersions){
            [contentVersionsResult addObject:tempMobileAppContent];
        }
    }

    _contentVersions = contentVersionsResult;
        
    }
    return _contentVersions;
}

- (void) setContentVersions: (NSArray*) val
{
    _contentVersions = val;
    self.dictionary[@"contentVersions"] = val;
}


@end
