// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTextColumn()
{
    BOOL _allowMultipleLines;
    BOOL _appendChangesToExistingText;
    int32_t _linesForEditing;
    int32_t _maxLength;
    NSString* _textType;
}
@end

@implementation MSGraphTextColumn

- (BOOL) allowMultipleLines
{
    _allowMultipleLines = [self.dictionary[@"allowMultipleLines"] boolValue];
    return _allowMultipleLines;
}

- (void) setAllowMultipleLines: (BOOL) val
{
    _allowMultipleLines = val;
    self.dictionary[@"allowMultipleLines"] = @(val);
}

- (BOOL) appendChangesToExistingText
{
    _appendChangesToExistingText = [self.dictionary[@"appendChangesToExistingText"] boolValue];
    return _appendChangesToExistingText;
}

- (void) setAppendChangesToExistingText: (BOOL) val
{
    _appendChangesToExistingText = val;
    self.dictionary[@"appendChangesToExistingText"] = @(val);
}

- (int32_t) linesForEditing
{
    _linesForEditing = [self.dictionary[@"linesForEditing"] intValue];
    return _linesForEditing;
}

- (void) setLinesForEditing: (int32_t) val
{
    _linesForEditing = val;
    self.dictionary[@"linesForEditing"] = @(val);
}

- (int32_t) maxLength
{
    _maxLength = [self.dictionary[@"maxLength"] intValue];
    return _maxLength;
}

- (void) setMaxLength: (int32_t) val
{
    _maxLength = val;
    self.dictionary[@"maxLength"] = @(val);
}

- (NSString*) textType
{
    if([[NSNull null] isEqual:self.dictionary[@"textType"]])
    {
        return nil;
    }   
    return self.dictionary[@"textType"];
}

- (void) setTextType: (NSString*) val
{
    self.dictionary[@"textType"] = val;
}

@end
