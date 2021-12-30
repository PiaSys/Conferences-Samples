// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsDefenderScanActionResult()
{
    NSString* _scanType;
}
@end

@implementation MSGraphWindowsDefenderScanActionResult

- (NSString*) scanType
{
    if([[NSNull null] isEqual:self.dictionary[@"scanType"]])
    {
        return nil;
    }   
    return self.dictionary[@"scanType"];
}

- (void) setScanType: (NSString*) val
{
    self.dictionary[@"scanType"] = val;
}

@end
