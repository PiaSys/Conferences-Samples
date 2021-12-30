// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSingleValueLegacyExtendedProperty()
{
    NSString* _value;
}
@end

@implementation MSGraphSingleValueLegacyExtendedProperty

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.singleValueLegacyExtendedProperty";
    }
    return self;
}
- (NSString*) value
{
    if([[NSNull null] isEqual:self.dictionary[@"value"]])
    {
        return nil;
    }   
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}


@end
