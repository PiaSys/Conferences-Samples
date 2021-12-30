// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosHomeScreenPage()
{
    NSString* _displayName;
    NSArray* _icons;
}
@end

@implementation MSGraphIosHomeScreenPage

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

- (NSArray*) icons
{
    if(!_icons){
        
    NSMutableArray *iconsResult = [NSMutableArray array];
    NSArray *icons = self.dictionary[@"icons"];

    if ([icons isKindOfClass:[NSArray class]]){
        for (id tempIosHomeScreenItem in icons){
            [iconsResult addObject:tempIosHomeScreenItem];
        }
    }

    _icons = iconsResult;
        
    }
    return _icons;
}

- (void) setIcons: (NSArray*) val
{
    _icons = val;
    self.dictionary[@"icons"] = val;
}

@end
