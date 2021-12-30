// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosHomeScreenFolderPage()
{
    NSString* _displayName;
    NSArray* _apps;
}
@end

@implementation MSGraphIosHomeScreenFolderPage

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

- (NSArray*) apps
{
    if(!_apps){
        
    NSMutableArray *appsResult = [NSMutableArray array];
    NSArray *apps = self.dictionary[@"apps"];

    if ([apps isKindOfClass:[NSArray class]]){
        for (id tempIosHomeScreenApp in apps){
            [appsResult addObject:tempIosHomeScreenApp];
        }
    }

    _apps = appsResult;
        
    }
    return _apps;
}

- (void) setApps: (NSArray*) val
{
    _apps = val;
    self.dictionary[@"apps"] = val;
}

@end
