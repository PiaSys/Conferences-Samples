// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOutlookCategory()
{
    NSString* _displayName;
    MSGraphCategoryColor* _color;
}
@end

@implementation MSGraphOutlookCategory

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.outlookCategory";
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

- (MSGraphCategoryColor*) color
{
    if(!_color){
        _color = [self.dictionary[@"color"] toMSGraphCategoryColor];
    }
    return _color;
}

- (void) setColor: (MSGraphCategoryColor*) val
{
    _color = val;
    self.dictionary[@"color"] = val;
}


@end
