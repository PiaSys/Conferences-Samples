// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookIcon()
{
    int32_t _index;
    NSString* _set;
}
@end

@implementation MSGraphWorkbookIcon

- (int32_t) index
{
    _index = [self.dictionary[@"index"] intValue];
    return _index;
}

- (void) setIndex: (int32_t) val
{
    _index = val;
    self.dictionary[@"index"] = @(val);
}

- (NSString*) set
{
    return self.dictionary[@"set"];
}

- (void) setSet: (NSString*) val
{
    self.dictionary[@"set"] = val;
}

@end
