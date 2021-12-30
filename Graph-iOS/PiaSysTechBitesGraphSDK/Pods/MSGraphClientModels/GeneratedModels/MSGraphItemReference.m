// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemReference()
{
    NSString* _driveId;
    NSString* _driveType;
    NSString* _itemReferenceId;
    NSString* _name;
    NSString* _path;
    NSString* _shareId;
    MSGraphSharepointIds* _sharepointIds;
    NSString* _siteId;
}
@end

@implementation MSGraphItemReference

- (NSString*) driveId
{
    if([[NSNull null] isEqual:self.dictionary[@"driveId"]])
    {
        return nil;
    }   
    return self.dictionary[@"driveId"];
}

- (void) setDriveId: (NSString*) val
{
    self.dictionary[@"driveId"] = val;
}

- (NSString*) driveType
{
    if([[NSNull null] isEqual:self.dictionary[@"driveType"]])
    {
        return nil;
    }   
    return self.dictionary[@"driveType"];
}

- (void) setDriveType: (NSString*) val
{
    self.dictionary[@"driveType"] = val;
}

- (NSString*) itemReferenceId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setItemReferenceId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) path
{
    if([[NSNull null] isEqual:self.dictionary[@"path"]])
    {
        return nil;
    }   
    return self.dictionary[@"path"];
}

- (void) setPath: (NSString*) val
{
    self.dictionary[@"path"] = val;
}

- (NSString*) shareId
{
    if([[NSNull null] isEqual:self.dictionary[@"shareId"]])
    {
        return nil;
    }   
    return self.dictionary[@"shareId"];
}

- (void) setShareId: (NSString*) val
{
    self.dictionary[@"shareId"] = val;
}

- (MSGraphSharepointIds*) sharepointIds
{
    if(!_sharepointIds){
        _sharepointIds = [[MSGraphSharepointIds alloc] initWithDictionary: self.dictionary[@"sharepointIds"]];
    }
    return _sharepointIds;
}

- (void) setSharepointIds: (MSGraphSharepointIds*) val
{
    _sharepointIds = val;
    self.dictionary[@"sharepointIds"] = val;
}

- (NSString*) siteId
{
    if([[NSNull null] isEqual:self.dictionary[@"siteId"]])
    {
        return nil;
    }   
    return self.dictionary[@"siteId"];
}

- (void) setSiteId: (NSString*) val
{
    self.dictionary[@"siteId"] = val;
}

@end
