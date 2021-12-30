// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResponseStatus()
{
    MSGraphResponseType* _response;
    NSDate* _time;
}
@end

@implementation MSGraphResponseStatus

- (MSGraphResponseType*) response
{
    if(!_response){
        _response = [self.dictionary[@"response"] toMSGraphResponseType];
    }
    return _response;
}

- (void) setResponse: (MSGraphResponseType*) val
{
    _response = val;
    self.dictionary[@"response"] = val;
}

- (NSDate*) time
{
    if(!_time){
        _time = [NSDate ms_dateFromString: self.dictionary[@"time"]];
    }
    return _time;
}

- (void) setTime: (NSDate*) val
{
    _time = val;
    self.dictionary[@"time"] = [val ms_toString];
}

@end
