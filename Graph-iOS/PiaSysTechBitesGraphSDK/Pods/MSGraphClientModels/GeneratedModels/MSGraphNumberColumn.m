// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphNumberColumn()
{
    NSString* _decimalPlaces;
    NSString* _displayAs;
    double _maximum;
    double _minimum;
}
@end

@implementation MSGraphNumberColumn

- (NSString*) decimalPlaces
{
    if([[NSNull null] isEqual:self.dictionary[@"decimalPlaces"]])
    {
        return nil;
    }   
    return self.dictionary[@"decimalPlaces"];
}

- (void) setDecimalPlaces: (NSString*) val
{
    self.dictionary[@"decimalPlaces"] = val;
}

- (NSString*) displayAs
{
    if([[NSNull null] isEqual:self.dictionary[@"displayAs"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayAs"];
}

- (void) setDisplayAs: (NSString*) val
{
    self.dictionary[@"displayAs"] = val;
}

- (double) maximum
{
    _maximum = [self.dictionary[@"maximum"] floatValue];
    return _maximum;
}

- (void) setMaximum: (double) val
{
    _maximum = val;
    self.dictionary[@"maximum"] = @(val);
}

- (double) minimum
{
    _minimum = [self.dictionary[@"minimum"] floatValue];
    return _minimum;
}

- (void) setMinimum: (double) val
{
    _minimum = val;
    self.dictionary[@"minimum"] = @(val);
}

@end
