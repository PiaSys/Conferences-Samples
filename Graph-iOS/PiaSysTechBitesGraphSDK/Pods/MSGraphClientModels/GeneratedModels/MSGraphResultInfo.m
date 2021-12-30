// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResultInfo()
{
    int32_t _code;
    int32_t _subcode;
    NSString* _message;
}
@end

@implementation MSGraphResultInfo

- (int32_t) code
{
    _code = [self.dictionary[@"code"] intValue];
    return _code;
}

- (void) setCode: (int32_t) val
{
    _code = val;
    self.dictionary[@"code"] = @(val);
}

- (int32_t) subcode
{
    _subcode = [self.dictionary[@"subcode"] intValue];
    return _subcode;
}

- (void) setSubcode: (int32_t) val
{
    _subcode = val;
    self.dictionary[@"subcode"] = @(val);
}

- (NSString*) message
{
    if([[NSNull null] isEqual:self.dictionary[@"message"]])
    {
        return nil;
    }   
    return self.dictionary[@"message"];
}

- (void) setMessage: (NSString*) val
{
    self.dictionary[@"message"] = val;
}

@end
