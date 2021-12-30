// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionDesktopApp()
{
    NSString* _binaryName;
    NSString* _binaryVersionLow;
    NSString* _binaryVersionHigh;
}
@end

@implementation MSGraphWindowsInformationProtectionDesktopApp

- (NSString*) binaryName
{
    return self.dictionary[@"binaryName"];
}

- (void) setBinaryName: (NSString*) val
{
    self.dictionary[@"binaryName"] = val;
}

- (NSString*) binaryVersionLow
{
    if([[NSNull null] isEqual:self.dictionary[@"binaryVersionLow"]])
    {
        return nil;
    }   
    return self.dictionary[@"binaryVersionLow"];
}

- (void) setBinaryVersionLow: (NSString*) val
{
    self.dictionary[@"binaryVersionLow"] = val;
}

- (NSString*) binaryVersionHigh
{
    if([[NSNull null] isEqual:self.dictionary[@"binaryVersionHigh"]])
    {
        return nil;
    }   
    return self.dictionary[@"binaryVersionHigh"];
}

- (void) setBinaryVersionHigh: (NSString*) val
{
    self.dictionary[@"binaryVersionHigh"] = val;
}

@end
