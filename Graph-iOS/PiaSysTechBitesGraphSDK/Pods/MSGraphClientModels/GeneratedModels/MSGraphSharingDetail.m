// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharingDetail()
{
    MSGraphInsightIdentity* _sharedBy;
    NSDate* _sharedDateTime;
    NSString* _sharingSubject;
    NSString* _sharingType;
    MSGraphResourceReference* _sharingReference;
}
@end

@implementation MSGraphSharingDetail

- (MSGraphInsightIdentity*) sharedBy
{
    if(!_sharedBy){
        _sharedBy = [[MSGraphInsightIdentity alloc] initWithDictionary: self.dictionary[@"sharedBy"]];
    }
    return _sharedBy;
}

- (void) setSharedBy: (MSGraphInsightIdentity*) val
{
    _sharedBy = val;
    self.dictionary[@"sharedBy"] = val;
}

- (NSDate*) sharedDateTime
{
    if(!_sharedDateTime){
        _sharedDateTime = [NSDate ms_dateFromString: self.dictionary[@"sharedDateTime"]];
    }
    return _sharedDateTime;
}

- (void) setSharedDateTime: (NSDate*) val
{
    _sharedDateTime = val;
    self.dictionary[@"sharedDateTime"] = [val ms_toString];
}

- (NSString*) sharingSubject
{
    if([[NSNull null] isEqual:self.dictionary[@"sharingSubject"]])
    {
        return nil;
    }   
    return self.dictionary[@"sharingSubject"];
}

- (void) setSharingSubject: (NSString*) val
{
    self.dictionary[@"sharingSubject"] = val;
}

- (NSString*) sharingType
{
    if([[NSNull null] isEqual:self.dictionary[@"sharingType"]])
    {
        return nil;
    }   
    return self.dictionary[@"sharingType"];
}

- (void) setSharingType: (NSString*) val
{
    self.dictionary[@"sharingType"] = val;
}

- (MSGraphResourceReference*) sharingReference
{
    if(!_sharingReference){
        _sharingReference = [[MSGraphResourceReference alloc] initWithDictionary: self.dictionary[@"sharingReference"]];
    }
    return _sharingReference;
}

- (void) setSharingReference: (MSGraphResourceReference*) val
{
    _sharingReference = val;
    self.dictionary[@"sharingReference"] = val;
}

@end
