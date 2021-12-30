// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartLineFormat()
{
    NSString* _color;
}
@end

@implementation MSGraphWorkbookChartLineFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartLineFormat";
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
