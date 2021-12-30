// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsMobileMSI()
{
    NSString* _commandLine;
    NSString* _productCode;
    NSString* _productVersion;
    BOOL _ignoreVersionDetection;
}
@end

@implementation MSGraphWindowsMobileMSI

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsMobileMSI";
    }
    return self;
}
- (NSString*) commandLine
{
    if([[NSNull null] isEqual:self.dictionary[@"commandLine"]])
    {
        return nil;
    }   
    return self.dictionary[@"commandLine"];
}

- (void) setCommandLine: (NSString*) val
{
    self.dictionary[@"commandLine"] = val;
}

- (NSString*) productCode
{
    if([[NSNull null] isEqual:self.dictionary[@"productCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"productCode"];
}

- (void) setProductCode: (NSString*) val
{
    self.dictionary[@"productCode"] = val;
}

- (NSString*) productVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"productVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"productVersion"];
}

- (void) setProductVersion: (NSString*) val
{
    self.dictionary[@"productVersion"] = val;
}

- (BOOL) ignoreVersionDetection
{
    _ignoreVersionDetection = [self.dictionary[@"ignoreVersionDetection"] boolValue];
    return _ignoreVersionDetection;
}

- (void) setIgnoreVersionDetection: (BOOL) val
{
    _ignoreVersionDetection = val;
    self.dictionary[@"ignoreVersionDetection"] = @(val);
}


@end
