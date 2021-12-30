// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRangeFont()
{
    BOOL _bold;
    NSString* _color;
    BOOL _italic;
    NSString* _name;
    double _size;
    NSString* _underline;
}
@end

@implementation MSGraphWorkbookRangeFont

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookRangeFont";
    }
    return self;
}
- (BOOL) bold
{
    _bold = [self.dictionary[@"bold"] boolValue];
    return _bold;
}

- (void) setBold: (BOOL) val
{
    _bold = val;
    self.dictionary[@"bold"] = @(val);
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

- (BOOL) italic
{
    _italic = [self.dictionary[@"italic"] boolValue];
    return _italic;
}

- (void) setItalic: (BOOL) val
{
    _italic = val;
    self.dictionary[@"italic"] = @(val);
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

- (double) size
{
    _size = [self.dictionary[@"size"] floatValue];
    return _size;
}

- (void) setSize: (double) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

- (NSString*) underline
{
    if([[NSNull null] isEqual:self.dictionary[@"underline"]])
    {
        return nil;
    }   
    return self.dictionary[@"underline"];
}

- (void) setUnderline: (NSString*) val
{
    self.dictionary[@"underline"] = val;
}


@end
