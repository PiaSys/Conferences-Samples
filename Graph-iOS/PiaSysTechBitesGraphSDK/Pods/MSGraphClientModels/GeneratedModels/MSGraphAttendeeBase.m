// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttendeeBase()
{
    MSGraphAttendeeType* _type;
}
@end

@implementation MSGraphAttendeeBase

- (MSGraphAttendeeType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphAttendeeType];
    }
    return _type;
}

- (void) setType: (MSGraphAttendeeType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

@end
