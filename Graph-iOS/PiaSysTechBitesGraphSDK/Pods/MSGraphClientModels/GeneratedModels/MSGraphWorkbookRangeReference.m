// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRangeReference()
{
    NSString* _address;
}
@end

@implementation MSGraphWorkbookRangeReference

- (NSString*) address
{
    if([[NSNull null] isEqual:self.dictionary[@"address"]])
    {
        return nil;
    }   
    return self.dictionary[@"address"];
}

- (void) setAddress: (NSString*) val
{
    self.dictionary[@"address"] = val;
}

@end
