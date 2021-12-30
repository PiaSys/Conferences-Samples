// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLocationConstraint()
{
    NSArray* _locations;
    BOOL _isRequired;
    BOOL _suggestLocation;
}
@end

@implementation MSGraphLocationConstraint

- (NSArray*) locations
{
    if(!_locations){
        
    NSMutableArray *locationsResult = [NSMutableArray array];
    NSArray *locations = self.dictionary[@"locations"];

    if ([locations isKindOfClass:[NSArray class]]){
        for (id tempLocationConstraintItem in locations){
            [locationsResult addObject:tempLocationConstraintItem];
        }
    }

    _locations = locationsResult;
        
    }
    return _locations;
}

- (void) setLocations: (NSArray*) val
{
    _locations = val;
    self.dictionary[@"locations"] = val;
}

- (BOOL) isRequired
{
    _isRequired = [self.dictionary[@"isRequired"] boolValue];
    return _isRequired;
}

- (void) setIsRequired: (BOOL) val
{
    _isRequired = val;
    self.dictionary[@"isRequired"] = @(val);
}

- (BOOL) suggestLocation
{
    _suggestLocation = [self.dictionary[@"suggestLocation"] boolValue];
    return _suggestLocation;
}

- (void) setSuggestLocation: (BOOL) val
{
    _suggestLocation = val;
    self.dictionary[@"suggestLocation"] = @(val);
}

@end
