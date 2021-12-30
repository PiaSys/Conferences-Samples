// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRangeFill()
{
    NSString* _color;
}
@end

@implementation MSGraphWorkbookRangeFill

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookRangeFill";
    }
    return self;
}
- (NSString*) color
{
    if([[NSNull null] isEqual:self.dictionary[@"color"]])
    {
        return nil;
    }   
    return self.dictionary[@"color"];
}

- (void) setColor: (NSString*) val
{
    self.dictionary[@"color"] = val;
}


@end
