// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMailboxSettings()
{
    MSGraphAutomaticRepliesSetting* _automaticRepliesSetting;
    NSString* _archiveFolder;
    NSString* _timeZone;
    MSGraphLocaleInfo* _language;
    MSGraphWorkingHours* _workingHours;
    NSString* _dateFormat;
    NSString* _timeFormat;
}
@end

@implementation MSGraphMailboxSettings

- (MSGraphAutomaticRepliesSetting*) automaticRepliesSetting
{
    if(!_automaticRepliesSetting){
        _automaticRepliesSetting = [[MSGraphAutomaticRepliesSetting alloc] initWithDictionary: self.dictionary[@"automaticRepliesSetting"]];
    }
    return _automaticRepliesSetting;
}

- (void) setAutomaticRepliesSetting: (MSGraphAutomaticRepliesSetting*) val
{
    _automaticRepliesSetting = val;
    self.dictionary[@"automaticRepliesSetting"] = val;
}

- (NSString*) archiveFolder
{
    if([[NSNull null] isEqual:self.dictionary[@"archiveFolder"]])
    {
        return nil;
    }   
    return self.dictionary[@"archiveFolder"];
}

- (void) setArchiveFolder: (NSString*) val
{
    self.dictionary[@"archiveFolder"] = val;
}

- (NSString*) timeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"timeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeZone"];
}

- (void) setTimeZone: (NSString*) val
{
    self.dictionary[@"timeZone"] = val;
}

- (MSGraphLocaleInfo*) language
{
    if(!_language){
        _language = [[MSGraphLocaleInfo alloc] initWithDictionary: self.dictionary[@"language"]];
    }
    return _language;
}

- (void) setLanguage: (MSGraphLocaleInfo*) val
{
    _language = val;
    self.dictionary[@"language"] = val;
}

- (MSGraphWorkingHours*) workingHours
{
    if(!_workingHours){
        _workingHours = [[MSGraphWorkingHours alloc] initWithDictionary: self.dictionary[@"workingHours"]];
    }
    return _workingHours;
}

- (void) setWorkingHours: (MSGraphWorkingHours*) val
{
    _workingHours = val;
    self.dictionary[@"workingHours"] = val;
}

- (NSString*) dateFormat
{
    if([[NSNull null] isEqual:self.dictionary[@"dateFormat"]])
    {
        return nil;
    }   
    return self.dictionary[@"dateFormat"];
}

- (void) setDateFormat: (NSString*) val
{
    self.dictionary[@"dateFormat"] = val;
}

- (NSString*) timeFormat
{
    if([[NSNull null] isEqual:self.dictionary[@"timeFormat"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeFormat"];
}

- (void) setTimeFormat: (NSString*) val
{
    self.dictionary[@"timeFormat"] = val;
}

@end
