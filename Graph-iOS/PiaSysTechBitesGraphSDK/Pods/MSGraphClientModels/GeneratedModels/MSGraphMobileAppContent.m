// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileAppContent()
{
    NSArray* _files;
}
@end

@implementation MSGraphMobileAppContent

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mobileAppContent";
    }
    return self;
}
- (NSArray*) files
{
    if(!_files){
        
    NSMutableArray *filesResult = [NSMutableArray array];
    NSArray *files = self.dictionary[@"files"];

    if ([files isKindOfClass:[NSArray class]]){
        for (id tempMobileAppContentFile in files){
            [filesResult addObject:tempMobileAppContentFile];
        }
    }

    _files = filesResult;
        
    }
    return _files;
}

- (void) setFiles: (NSArray*) val
{
    _files = val;
    self.dictionary[@"files"] = val;
}


@end
