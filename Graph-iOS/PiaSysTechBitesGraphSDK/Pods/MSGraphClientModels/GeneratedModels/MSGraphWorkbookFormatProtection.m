// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookFormatProtection()
{
    BOOL _formulaHidden;
    BOOL _locked;
}
@end

@implementation MSGraphWorkbookFormatProtection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookFormatProtection";
    }
    return self;
}
- (BOOL) formulaHidden
{
    _formulaHidden = [self.dictionary[@"formulaHidden"] boolValue];
    return _formulaHidden;
}

- (void) setFormulaHidden: (BOOL) val
{
    _formulaHidden = val;
    self.dictionary[@"formulaHidden"] = @(val);
}

- (BOOL) locked
{
    _locked = [self.dictionary[@"locked"] boolValue];
    return _locked;
}

- (void) setLocked: (BOOL) val
{
    _locked = val;
    self.dictionary[@"locked"] = @(val);
}


@end
