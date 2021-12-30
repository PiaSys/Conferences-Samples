// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationTerm()
{
    NSString* _externalId;
    MSDate* _startDate;
    MSDate* _endDate;
    NSString* _displayName;
}
@end

@implementation MSGraphEducationTerm

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

- (MSDate*) startDate
{
    if(!_startDate){
        _startDate = [MSDate ms_dateFromString: self.dictionary[@"startDate"]];
    }
    return _startDate;
}

- (void) setStartDate: (MSDate*) val
{
    _startDate = val;
    self.dictionary[@"startDate"] = [val ms_toString];
}

- (MSDate*) endDate
{
    if(!_endDate){
        _endDate = [MSDate ms_dateFromString: self.dictionary[@"endDate"]];
    }
    return _endDate;
}

- (void) setEndDate: (MSDate*) val
{
    _endDate = val;
    self.dictionary[@"endDate"] = [val ms_toString];
}

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

@end
