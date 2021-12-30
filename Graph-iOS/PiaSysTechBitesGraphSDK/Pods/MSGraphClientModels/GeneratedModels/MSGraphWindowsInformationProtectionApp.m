// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionApp()
{
    NSString* _displayName;
    NSString* _windowsInformationProtectionAppDescription;
    NSString* _publisherName;
    NSString* _productName;
    BOOL _denied;
}
@end

@implementation MSGraphWindowsInformationProtectionApp

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) windowsInformationProtectionAppDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setWindowsInformationProtectionAppDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) publisherName
{
    if([[NSNull null] isEqual:self.dictionary[@"publisherName"]])
    {
        return nil;
    }   
    return self.dictionary[@"publisherName"];
}

- (void) setPublisherName: (NSString*) val
{
    self.dictionary[@"publisherName"] = val;
}

- (NSString*) productName
{
    if([[NSNull null] isEqual:self.dictionary[@"productName"]])
    {
        return nil;
    }   
    return self.dictionary[@"productName"];
}

- (void) setProductName: (NSString*) val
{
    self.dictionary[@"productName"] = val;
}

- (BOOL) denied
{
    _denied = [self.dictionary[@"denied"] boolValue];
    return _denied;
}

- (void) setDenied: (BOOL) val
{
    _denied = val;
    self.dictionary[@"denied"] = @(val);
}

@end
