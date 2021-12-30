// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionAppLockerFile()
{
    NSString* _displayName;
    NSString* _fileHash;
    NSString* _file;
    NSString* _version;
}
@end

@implementation MSGraphWindowsInformationProtectionAppLockerFile

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsInformationProtectionAppLockerFile";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) fileHash
{
    if([[NSNull null] isEqual:self.dictionary[@"fileHash"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileHash"];
}

- (void) setFileHash: (NSString*) val
{
    self.dictionary[@"fileHash"] = val;
}

- (NSString*) file
{
    if([[NSNull null] isEqual:self.dictionary[@"file"]])
    {
        return nil;
    }   
    return self.dictionary[@"file"];
}

- (void) setFile: (NSString*) val
{
    self.dictionary[@"file"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}


@end
