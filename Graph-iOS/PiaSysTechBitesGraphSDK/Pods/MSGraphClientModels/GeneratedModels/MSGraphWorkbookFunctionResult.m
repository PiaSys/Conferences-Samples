// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookFunctionResult()
{
    NSString* _error;
    NSDictionary* _value;
}
@end

@implementation MSGraphWorkbookFunctionResult

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookFunctionResult";
    }
    return self;
}
- (NSString*) error
{
    if([[NSNull null] isEqual:self.dictionary[@"error"]])
    {
        return nil;
    }   
    return self.dictionary[@"error"];
}

- (void) setError: (NSString*) val
{
    self.dictionary[@"error"] = val;
}

- (NSDictionary*) value
{
    if(!_value){
        _value = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"value"]];
    }
    return _value;
}

- (void) setValue: (NSDictionary*) val
{
    _value = val;
    self.dictionary[@"value"] = val;
}


@end
