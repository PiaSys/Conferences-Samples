// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFolderView()
{
    NSString* _sortBy;
    NSString* _sortOrder;
    NSString* _viewType;
}
@end

@implementation MSGraphFolderView

- (NSString*) sortBy
{
    if([[NSNull null] isEqual:self.dictionary[@"sortBy"]])
    {
        return nil;
    }   
    return self.dictionary[@"sortBy"];
}

- (void) setSortBy: (NSString*) val
{
    self.dictionary[@"sortBy"] = val;
}

- (NSString*) sortOrder
{
    if([[NSNull null] isEqual:self.dictionary[@"sortOrder"]])
    {
        return nil;
    }   
    return self.dictionary[@"sortOrder"];
}

- (void) setSortOrder: (NSString*) val
{
    self.dictionary[@"sortOrder"] = val;
}

- (NSString*) viewType
{
    if([[NSNull null] isEqual:self.dictionary[@"viewType"]])
    {
        return nil;
    }   
    return self.dictionary[@"viewType"];
}

- (void) setViewType: (NSString*) val
{
    self.dictionary[@"viewType"] = val;
}

@end
