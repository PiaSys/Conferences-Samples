// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10SecureAssessmentConfiguration()
{
    NSString* _launchUri;
    NSString* _configurationAccount;
    BOOL _allowPrinting;
    BOOL _allowScreenCapture;
    BOOL _allowTextSuggestion;
}
@end

@implementation MSGraphWindows10SecureAssessmentConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows10SecureAssessmentConfiguration";
    }
    return self;
}
- (NSString*) launchUri
{
    if([[NSNull null] isEqual:self.dictionary[@"launchUri"]])
    {
        return nil;
    }   
    return self.dictionary[@"launchUri"];
}

- (void) setLaunchUri: (NSString*) val
{
    self.dictionary[@"launchUri"] = val;
}

- (NSString*) configurationAccount
{
    if([[NSNull null] isEqual:self.dictionary[@"configurationAccount"]])
    {
        return nil;
    }   
    return self.dictionary[@"configurationAccount"];
}

- (void) setConfigurationAccount: (NSString*) val
{
    self.dictionary[@"configurationAccount"] = val;
}

- (BOOL) allowPrinting
{
    _allowPrinting = [self.dictionary[@"allowPrinting"] boolValue];
    return _allowPrinting;
}

- (void) setAllowPrinting: (BOOL) val
{
    _allowPrinting = val;
    self.dictionary[@"allowPrinting"] = @(val);
}

- (BOOL) allowScreenCapture
{
    _allowScreenCapture = [self.dictionary[@"allowScreenCapture"] boolValue];
    return _allowScreenCapture;
}

- (void) setAllowScreenCapture: (BOOL) val
{
    _allowScreenCapture = val;
    self.dictionary[@"allowScreenCapture"] = @(val);
}

- (BOOL) allowTextSuggestion
{
    _allowTextSuggestion = [self.dictionary[@"allowTextSuggestion"] boolValue];
    return _allowTextSuggestion;
}

- (void) setAllowTextSuggestion: (BOOL) val
{
    _allowTextSuggestion = val;
    self.dictionary[@"allowTextSuggestion"] = @(val);
}


@end
