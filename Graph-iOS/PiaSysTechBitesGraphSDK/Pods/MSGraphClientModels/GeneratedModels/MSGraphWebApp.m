// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWebApp()
{
    NSString* _appUrl;
    BOOL _useManagedBrowser;
}
@end

@implementation MSGraphWebApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.webApp";
    }
    return self;
}
- (NSString*) appUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"appUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"appUrl"];
}

- (void) setAppUrl: (NSString*) val
{
    self.dictionary[@"appUrl"] = val;
}

- (BOOL) useManagedBrowser
{
    _useManagedBrowser = [self.dictionary[@"useManagedBrowser"] boolValue];
    return _useManagedBrowser;
}

- (void) setUseManagedBrowser: (BOOL) val
{
    _useManagedBrowser = val;
    self.dictionary[@"useManagedBrowser"] = @(val);
}


@end
