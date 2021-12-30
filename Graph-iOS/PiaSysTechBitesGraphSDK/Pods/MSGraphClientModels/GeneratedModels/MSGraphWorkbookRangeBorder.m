// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRangeBorder()
{
    NSString* _color;
    NSString* _sideIndex;
    NSString* _style;
    NSString* _weight;
}
@end

@implementation MSGraphWorkbookRangeBorder

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookRangeBorder";
    }
    return self;
}
- (NSString*) color
{
    if([[NSNull null] isEqual:self.dictionary[@"color"]])
    {
        return nil;
    }   
    return self.dictionary[@"color"];
}

- (void) setColor: (NSString*) val
{
    self.dictionary[@"color"] = val;
}

- (NSString*) sideIndex
{
    if([[NSNull null] isEqual:self.dictionary[@"sideIndex"]])
    {
        return nil;
    }   
    return self.dictionary[@"sideIndex"];
}

- (void) setSideIndex: (NSString*) val
{
    self.dictionary[@"sideIndex"] = val;
}

- (NSString*) style
{
    if([[NSNull null] isEqual:self.dictionary[@"style"]])
    {
        return nil;
    }   
    return self.dictionary[@"style"];
}

- (void) setStyle: (NSString*) val
{
    self.dictionary[@"style"] = val;
}

- (NSString*) weight
{
    if([[NSNull null] isEqual:self.dictionary[@"weight"]])
    {
        return nil;
    }   
    return self.dictionary[@"weight"];
}

- (void) setWeight: (NSString*) val
{
    self.dictionary[@"weight"] = val;
}


@end
