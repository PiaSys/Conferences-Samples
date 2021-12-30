// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDirectoryObject()
{
    NSDate* _deletedDateTime;
}
@end

@implementation MSGraphDirectoryObject

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.directoryObject";
    }
    return self;
}
- (NSDate*) deletedDateTime
{
    if(!_deletedDateTime){
        _deletedDateTime = [NSDate ms_dateFromString: self.dictionary[@"deletedDateTime"]];
    }
    return _deletedDateTime;
}

- (void) setDeletedDateTime: (NSDate*) val
{
    _deletedDateTime = val;
    self.dictionary[@"deletedDateTime"] = [val ms_toString];
}


@end
