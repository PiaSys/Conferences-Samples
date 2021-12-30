// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookWorksheet()
{
    NSString* _name;
    int32_t _position;
    NSString* _visibility;
    NSArray* _charts;
    NSArray* _names;
    NSArray* _pivotTables;
    MSGraphWorkbookWorksheetProtection* _protection;
    NSArray* _tables;
}
@end

@implementation MSGraphWorkbookWorksheet

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookWorksheet";
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

- (int32_t) position
{
    _position = [self.dictionary[@"position"] intValue];
    return _position;
}

- (void) setPosition: (int32_t) val
{
    _position = val;
    self.dictionary[@"position"] = @(val);
}

- (NSString*) visibility
{
    return self.dictionary[@"visibility"];
}

- (void) setVisibility: (NSString*) val
{
    self.dictionary[@"visibility"] = val;
}

- (NSArray*) charts
{
    if(!_charts){
        
    NSMutableArray *chartsResult = [NSMutableArray array];
    NSArray *charts = self.dictionary[@"charts"];

    if ([charts isKindOfClass:[NSArray class]]){
        for (id tempWorkbookChart in charts){
            [chartsResult addObject:tempWorkbookChart];
        }
    }

    _charts = chartsResult;
        
    }
    return _charts;
}

- (void) setCharts: (NSArray*) val
{
    _charts = val;
    self.dictionary[@"charts"] = val;
}

- (NSArray*) names
{
    if(!_names){
        
    NSMutableArray *namesResult = [NSMutableArray array];
    NSArray *names = self.dictionary[@"names"];

    if ([names isKindOfClass:[NSArray class]]){
        for (id tempWorkbookNamedItem in names){
            [namesResult addObject:tempWorkbookNamedItem];
        }
    }

    _names = namesResult;
        
    }
    return _names;
}

- (void) setNames: (NSArray*) val
{
    _names = val;
    self.dictionary[@"names"] = val;
}

- (NSArray*) pivotTables
{
    if(!_pivotTables){
        
    NSMutableArray *pivotTablesResult = [NSMutableArray array];
    NSArray *pivotTables = self.dictionary[@"pivotTables"];

    if ([pivotTables isKindOfClass:[NSArray class]]){
        for (id tempWorkbookPivotTable in pivotTables){
            [pivotTablesResult addObject:tempWorkbookPivotTable];
        }
    }

    _pivotTables = pivotTablesResult;
        
    }
    return _pivotTables;
}

- (void) setPivotTables: (NSArray*) val
{
    _pivotTables = val;
    self.dictionary[@"pivotTables"] = val;
}

- (MSGraphWorkbookWorksheetProtection*) protection
{
    if(!_protection){
        _protection = [[MSGraphWorkbookWorksheetProtection alloc] initWithDictionary: self.dictionary[@"protection"]];
    }
    return _protection;
}

- (void) setProtection: (MSGraphWorkbookWorksheetProtection*) val
{
    _protection = val;
    self.dictionary[@"protection"] = val;
}

- (NSArray*) tables
{
    if(!_tables){
        
    NSMutableArray *tablesResult = [NSMutableArray array];
    NSArray *tables = self.dictionary[@"tables"];

    if ([tables isKindOfClass:[NSArray class]]){
        for (id tempWorkbookTable in tables){
            [tablesResult addObject:tempWorkbookTable];
        }
    }

    _tables = tablesResult;
        
    }
    return _tables;
}

- (void) setTables: (NSArray*) val
{
    _tables = val;
    self.dictionary[@"tables"] = val;
}


@end
