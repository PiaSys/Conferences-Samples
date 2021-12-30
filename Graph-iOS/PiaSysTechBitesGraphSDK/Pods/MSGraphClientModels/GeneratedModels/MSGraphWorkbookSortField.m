// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookSortField()
{
    BOOL _ascending;
    NSString* _color;
    NSString* _dataOption;
    MSGraphWorkbookIcon* _icon;
    int32_t _key;
    NSString* _sortOn;
}
@end

@implementation MSGraphWorkbookSortField

- (BOOL) ascending
{
    _ascending = [self.dictionary[@"ascending"] boolValue];
    return _ascending;
}

- (void) setAscending: (BOOL) val
{
    _ascending = val;
    self.dictionary[@"ascending"] = @(val);
}

- (NSString*) color
{
    if([[NSNull null] isEqual:self.dictionary[@"color"]])
    {
        return nil;
    }   
    return self.dictionary[@"color"];
}

- (void) setColor: (NSString*) val
{
    self.dictionary[@"color"] = val;
}

- (NSString*) dataOption
{
    return self.dictionary[@"dataOption"];
}

- (void) setDataOption: (NSString*) val
{
    self.dictionary[@"dataOption"] = val;
}

- (MSGraphWorkbookIcon*) icon
{
    if(!_icon){
        _icon = [[MSGraphWorkbookIcon alloc] initWithDictionary: self.dictionary[@"icon"]];
    }
    return _icon;
}

- (void) setIcon: (MSGraphWorkbookIcon*) val
{
    _icon = val;
    self.dictionary[@"icon"] = val;
}

- (int32_t) key
{
    _key = [self.dictionary[@"key"] intValue];
    return _key;
}

- (void) setKey: (int32_t) val
{
    _key = val;
    self.dictionary[@"key"] = @(val);
}

- (NSString*) sortOn
{
    return self.dictionary[@"sortOn"];
}

- (void) setSortOn: (NSString*) val
{
    self.dictionary[@"sortOn"] = val;
}

@end
