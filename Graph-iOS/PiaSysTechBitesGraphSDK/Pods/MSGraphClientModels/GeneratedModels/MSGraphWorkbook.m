// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbook()
{
    MSGraphWorkbookApplication* _application;
    NSArray* _names;
    NSArray* _tables;
    NSArray* _worksheets;
    NSArray* _comments;
    MSGraphWorkbookFunctions* _functions;
}
@end

@implementation MSGraphWorkbook

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbook";
    }
    return self;
}
- (MSGraphWorkbookApplication*) application
{
    if(!_application){
        _application = [[MSGraphWorkbookApplication alloc] initWithDictionary: self.dictionary[@"application"]];
    }
    return _application;
}

- (void) setApplication: (MSGraphWorkbookApplication*) val
{
    _application = val;
    self.dictionary[@"application"] = val;
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

- (NSArray*) worksheets
{
    if(!_worksheets){
        
    NSMutableArray *worksheetsResult = [NSMutableArray array];
    NSArray *worksheets = self.dictionary[@"worksheets"];

    if ([worksheets isKindOfClass:[NSArray class]]){
        for (id tempWorkbookWorksheet in worksheets){
            [worksheetsResult addObject:tempWorkbookWorksheet];
        }
    }

    _worksheets = worksheetsResult;
        
    }
    return _worksheets;
}

- (void) setWorksheets: (NSArray*) val
{
    _worksheets = val;
    self.dictionary[@"worksheets"] = val;
}

- (NSArray*) comments
{
    if(!_comments){
        
    NSMutableArray *commentsResult = [NSMutableArray array];
    NSArray *comments = self.dictionary[@"comments"];

    if ([comments isKindOfClass:[NSArray class]]){
        for (id tempWorkbookComment in comments){
            [commentsResult addObject:tempWorkbookComment];
        }
    }

    _comments = commentsResult;
        
    }
    return _comments;
}

- (void) setComments: (NSArray*) val
{
    _comments = val;
    self.dictionary[@"comments"] = val;
}

- (MSGraphWorkbookFunctions*) functions
{
    if(!_functions){
        _functions = [[MSGraphWorkbookFunctions alloc] initWithDictionary: self.dictionary[@"functions"]];
    }
    return _functions;
}

- (void) setFunctions: (MSGraphWorkbookFunctions*) val
{
    _functions = val;
    self.dictionary[@"functions"] = val;
}


@end
