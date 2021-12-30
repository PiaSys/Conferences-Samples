// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartSeries()
{
    NSString* _name;
    MSGraphWorkbookChartSeriesFormat* _format;
    NSArray* _points;
}
@end

@implementation MSGraphWorkbookChartSeries

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartSeries";
    }
    return self;
}
- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphWorkbookChartSeriesFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartSeriesFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartSeriesFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}

- (NSArray*) points
{
    if(!_points){
        
    NSMutableArray *pointsResult = [NSMutableArray array];
    NSArray *points = self.dictionary[@"points"];

    if ([points isKindOfClass:[NSArray class]]){
        for (id tempWorkbookChartPoint in points){
            [pointsResult addObject:tempWorkbookChartPoint];
        }
    }

    _points = pointsResult;
        
    }
    return _points;
}

- (void) setPoints: (NSArray*) val
{
    _points = val;
    self.dictionary[@"points"] = val;
}


@end
