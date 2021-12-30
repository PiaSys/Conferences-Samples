// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartDataLabels()
{
    NSString* _position;
    NSString* _separator;
    BOOL _showBubbleSize;
    BOOL _showCategoryName;
    BOOL _showLegendKey;
    BOOL _showPercentage;
    BOOL _showSeriesName;
    BOOL _showValue;
    MSGraphWorkbookChartDataLabelFormat* _format;
}
@end

@implementation MSGraphWorkbookChartDataLabels

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartDataLabels";
    }
    return self;
}
- (NSString*) position
{
    if([[NSNull null] isEqual:self.dictionary[@"position"]])
    {
        return nil;
    }   
    return self.dictionary[@"position"];
}

- (void) setPosition: (NSString*) val
{
    self.dictionary[@"position"] = val;
}

- (NSString*) separator
{
    if([[NSNull null] isEqual:self.dictionary[@"separator"]])
    {
        return nil;
    }   
    return self.dictionary[@"separator"];
}

- (void) setSeparator: (NSString*) val
{
    self.dictionary[@"separator"] = val;
}

- (BOOL) showBubbleSize
{
    _showBubbleSize = [self.dictionary[@"showBubbleSize"] boolValue];
    return _showBubbleSize;
}

- (void) setShowBubbleSize: (BOOL) val
{
    _showBubbleSize = val;
    self.dictionary[@"showBubbleSize"] = @(val);
}

- (BOOL) showCategoryName
{
    _showCategoryName = [self.dictionary[@"showCategoryName"] boolValue];
    return _showCategoryName;
}

- (void) setShowCategoryName: (BOOL) val
{
    _showCategoryName = val;
    self.dictionary[@"showCategoryName"] = @(val);
}

- (BOOL) showLegendKey
{
    _showLegendKey = [self.dictionary[@"showLegendKey"] boolValue];
    return _showLegendKey;
}

- (void) setShowLegendKey: (BOOL) val
{
    _showLegendKey = val;
    self.dictionary[@"showLegendKey"] = @(val);
}

- (BOOL) showPercentage
{
    _showPercentage = [self.dictionary[@"showPercentage"] boolValue];
    return _showPercentage;
}

- (void) setShowPercentage: (BOOL) val
{
    _showPercentage = val;
    self.dictionary[@"showPercentage"] = @(val);
}

- (BOOL) showSeriesName
{
    _showSeriesName = [self.dictionary[@"showSeriesName"] boolValue];
    return _showSeriesName;
}

- (void) setShowSeriesName: (BOOL) val
{
    _showSeriesName = val;
    self.dictionary[@"showSeriesName"] = @(val);
}

- (BOOL) showValue
{
    _showValue = [self.dictionary[@"showValue"] boolValue];
    return _showValue;
}

- (void) setShowValue: (BOOL) val
{
    _showValue = val;
    self.dictionary[@"showValue"] = @(val);
}

- (MSGraphWorkbookChartDataLabelFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartDataLabelFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartDataLabelFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}


@end
