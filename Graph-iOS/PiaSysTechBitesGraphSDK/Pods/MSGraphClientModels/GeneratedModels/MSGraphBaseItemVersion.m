// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBaseItemVersion()
{
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    MSGraphPublicationFacet* _publication;
}
@end

@implementation MSGraphBaseItemVersion

- (MSGraphIdentitySet*) lastModifiedBy
{
    if(!_lastModifiedBy){
        _lastModifiedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"lastModifiedBy"]];
    }
    return _lastModifiedBy;
}

- (void) setLastModifiedBy: (MSGraphIdentitySet*) val
{
    _lastModifiedBy = val;
    self.dictionary[@"lastModifiedBy"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (MSGraphPublicationFacet*) publication
{
    if(!_publication){
        _publication = [[MSGraphPublicationFacet alloc] initWithDictionary: self.dictionary[@"publication"]];
    }
    return _publication;
}

- (void) setPublication: (MSGraphPublicationFacet*) val
{
    _publication = val;
    self.dictionary[@"publication"] = val;
}


@end
