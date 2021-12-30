// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosHomeScreenFolder()
{
    NSArray* _pages;
}
@end

@implementation MSGraphIosHomeScreenFolder

- (NSArray*) pages
{
    if(!_pages){
        
    NSMutableArray *pagesResult = [NSMutableArray array];
    NSArray *pages = self.dictionary[@"pages"];

    if ([pages isKindOfClass:[NSArray class]]){
        for (id tempIosHomeScreenFolderPage in pages){
            [pagesResult addObject:tempIosHomeScreenFolderPage];
        }
    }

    _pages = pagesResult;
        
    }
    return _pages;
}

- (void) setPages: (NSArray*) val
{
    _pages = val;
    self.dictionary[@"pages"] = val;
}

@end
