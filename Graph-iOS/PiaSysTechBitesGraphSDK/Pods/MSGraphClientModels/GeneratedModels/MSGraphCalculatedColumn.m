// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCalculatedColumn()
{
    NSString* _format;
    NSString* _formula;
    NSString* _outputType;
}
@end

@implementation MSGraphCalculatedColumn

- (NSString*) format
{
    if([[NSNull null] isEqual:self.dictionary[@"format"]])
    {
        return nil;
    }   
    return self.dictionary[@"format"];
}

- (void) setFormat: (NSString*) val
{
    self.dictionary[@"format"] = val;
}

- (NSString*) formula
{
    if([[NSNull null] isEqual:self.dictionary[@"formula"]])
    {
        return nil;
    }   
    return self.dictionary[@"formula"];
}

- (void) setFormula: (NSString*) val
{
    self.dictionary[@"formula"] = val;
}

- (NSString*) outputType
{
    if([[NSNull null] isEqual:self.dictionary[@"outputType"]])
    {
        return nil;
    }   
    return self.dictionary[@"outputType"];
}

- (void) setOutputType: (NSString*) val
{
    self.dictionary[@"outputType"] = val;
}

@end
