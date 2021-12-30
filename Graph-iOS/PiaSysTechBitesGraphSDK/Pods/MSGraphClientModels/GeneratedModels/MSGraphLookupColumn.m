// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLookupColumn()
{
    BOOL _allowMultipleValues;
    BOOL _allowUnlimitedLength;
    NSString* _columnName;
    NSString* _listId;
    NSString* _primaryLookupColumnId;
}
@end

@implementation MSGraphLookupColumn

- (BOOL) allowMultipleValues
{
    _allowMultipleValues = [self.dictionary[@"allowMultipleValues"] boolValue];
    return _allowMultipleValues;
}

- (void) setAllowMultipleValues: (BOOL) val
{
    _allowMultipleValues = val;
    self.dictionary[@"allowMultipleValues"] = @(val);
}

- (BOOL) allowUnlimitedLength
{
    _allowUnlimitedLength = [self.dictionary[@"allowUnlimitedLength"] boolValue];
    return _allowUnlimitedLength;
}

- (void) setAllowUnlimitedLength: (BOOL) val
{
    _allowUnlimitedLength = val;
    self.dictionary[@"allowUnlimitedLength"] = @(val);
}

- (NSString*) columnName
{
    if([[NSNull null] isEqual:self.dictionary[@"columnName"]])
    {
        return nil;
    }   
    return self.dictionary[@"columnName"];
}

- (void) setColumnName: (NSString*) val
{
    self.dictionary[@"columnName"] = val;
}

- (NSString*) listId
{
    if([[NSNull null] isEqual:self.dictionary[@"listId"]])
    {
        return nil;
    }   
    return self.dictionary[@"listId"];
}

- (void) setListId: (NSString*) val
{
    self.dictionary[@"listId"] = val;
}

- (NSString*) primaryLookupColumnId
{
    if([[NSNull null] isEqual:self.dictionary[@"primaryLookupColumnId"]])
    {
        return nil;
    }   
    return self.dictionary[@"primaryLookupColumnId"];
}

- (void) setPrimaryLookupColumnId: (NSString*) val
{
    self.dictionary[@"primaryLookupColumnId"] = val;
}

@end
