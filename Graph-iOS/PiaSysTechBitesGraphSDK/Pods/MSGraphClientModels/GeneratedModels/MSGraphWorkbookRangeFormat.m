// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRangeFormat()
{
    double _columnWidth;
    NSString* _horizontalAlignment;
    double _rowHeight;
    NSString* _verticalAlignment;
    BOOL _wrapText;
    NSArray* _borders;
    MSGraphWorkbookRangeFill* _fill;
    MSGraphWorkbookRangeFont* _font;
    MSGraphWorkbookFormatProtection* _protection;
}
@end

@implementation MSGraphWorkbookRangeFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookRangeFormat";
    }
    return self;
}
- (double) columnWidth
{
    _columnWidth = [self.dictionary[@"columnWidth"] floatValue];
    return _columnWidth;
}

- (void) setColumnWidth: (double) val
{
    _columnWidth = val;
    self.dictionary[@"columnWidth"] = @(val);
}

- (NSString*) horizontalAlignment
{
    if([[NSNull null] isEqual:self.dictionary[@"horizontalAlignment"]])
    {
        return nil;
    }   
    return self.dictionary[@"horizontalAlignment"];
}

- (void) setHorizontalAlignment: (NSString*) val
{
    self.dictionary[@"horizontalAlignment"] = val;
}

- (double) rowHeight
{
    _rowHeight = [self.dictionary[@"rowHeight"] floatValue];
    return _rowHeight;
}

- (void) setRowHeight: (double) val
{
    _rowHeight = val;
    self.dictionary[@"rowHeight"] = @(val);
}

- (NSString*) verticalAlignment
{
    if([[NSNull null] isEqual:self.dictionary[@"verticalAlignment"]])
    {
        return nil;
    }   
    return self.dictionary[@"verticalAlignment"];
}

- (void) setVerticalAlignment: (NSString*) val
{
    self.dictionary[@"verticalAlignment"] = val;
}

- (BOOL) wrapText
{
    _wrapText = [self.dictionary[@"wrapText"] boolValue];
    return _wrapText;
}

- (void) setWrapText: (BOOL) val
{
    _wrapText = val;
    self.dictionary[@"wrapText"] = @(val);
}

- (NSArray*) borders
{
    if(!_borders){
        
    NSMutableArray *bordersResult = [NSMutableArray array];
    NSArray *borders = self.dictionary[@"borders"];

    if ([borders isKindOfClass:[NSArray class]]){
        for (id tempWorkbookRangeBorder in borders){
            [bordersResult addObject:tempWorkbookRangeBorder];
        }
    }

    _borders = bordersResult;
        
    }
    return _borders;
}

- (void) setBorders: (NSArray*) val
{
    _borders = val;
    self.dictionary[@"borders"] = val;
}

- (MSGraphWorkbookRangeFill*) fill
{
    if(!_fill){
        _fill = [[MSGraphWorkbookRangeFill alloc] initWithDictionary: self.dictionary[@"fill"]];
    }
    return _fill;
}

- (void) setFill: (MSGraphWorkbookRangeFill*) val
{
    _fill = val;
    self.dictionary[@"fill"] = val;
}

- (MSGraphWorkbookRangeFont*) font
{
    if(!_font){
        _font = [[MSGraphWorkbookRangeFont alloc] initWithDictionary: self.dictionary[@"font"]];
    }
    return _font;
}

- (void) setFont: (MSGraphWorkbookRangeFont*) val
{
    _font = val;
    self.dictionary[@"font"] = val;
}

- (MSGraphWorkbookFormatProtection*) protection
{
    if(!_protection){
        _protection = [[MSGraphWorkbookFormatProtection alloc] initWithDictionary: self.dictionary[@"protection"]];
    }
    return _protection;
}

- (void) setProtection: (MSGraphWorkbookFormatProtection*) val
{
    _protection = val;
    self.dictionary[@"protection"] = val;
}


@end
