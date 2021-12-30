// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOmaSettingStringXml()
{
    NSString* _fileName;
    NSString* _value;
}
@end

@implementation MSGraphOmaSettingStringXml

- (NSString*) fileName
{
    if([[NSNull null] isEqual:self.dictionary[@"fileName"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileName"];
}

- (void) setFileName: (NSString*) val
{
    self.dictionary[@"fileName"] = val;
}

- (NSString*) value
{
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

@end
