// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPhoto()
{
    NSString* _cameraMake;
    NSString* _cameraModel;
    double _exposureDenominator;
    double _exposureNumerator;
    double _fNumber;
    double _focalLength;
    int32_t _iso;
    NSDate* _takenDateTime;
}
@end

@implementation MSGraphPhoto

- (NSString*) cameraMake
{
    if([[NSNull null] isEqual:self.dictionary[@"cameraMake"]])
    {
        return nil;
    }   
    return self.dictionary[@"cameraMake"];
}

- (void) setCameraMake: (NSString*) val
{
    self.dictionary[@"cameraMake"] = val;
}

- (NSString*) cameraModel
{
    if([[NSNull null] isEqual:self.dictionary[@"cameraModel"]])
    {
        return nil;
    }   
    return self.dictionary[@"cameraModel"];
}

- (void) setCameraModel: (NSString*) val
{
    self.dictionary[@"cameraModel"] = val;
}

- (double) exposureDenominator
{
    _exposureDenominator = [self.dictionary[@"exposureDenominator"] floatValue];
    return _exposureDenominator;
}

- (void) setExposureDenominator: (double) val
{
    _exposureDenominator = val;
    self.dictionary[@"exposureDenominator"] = @(val);
}

- (double) exposureNumerator
{
    _exposureNumerator = [self.dictionary[@"exposureNumerator"] floatValue];
    return _exposureNumerator;
}

- (void) setExposureNumerator: (double) val
{
    _exposureNumerator = val;
    self.dictionary[@"exposureNumerator"] = @(val);
}

- (double) fNumber
{
    _fNumber = [self.dictionary[@"fNumber"] floatValue];
    return _fNumber;
}

- (void) setFNumber: (double) val
{
    _fNumber = val;
    self.dictionary[@"fNumber"] = @(val);
}

- (double) focalLength
{
    _focalLength = [self.dictionary[@"focalLength"] floatValue];
    return _focalLength;
}

- (void) setFocalLength: (double) val
{
    _focalLength = val;
    self.dictionary[@"focalLength"] = @(val);
}

- (int32_t) iso
{
    _iso = [self.dictionary[@"iso"] intValue];
    return _iso;
}

- (void) setIso: (int32_t) val
{
    _iso = val;
    self.dictionary[@"iso"] = @(val);
}

- (NSDate*) takenDateTime
{
    if(!_takenDateTime){
        _takenDateTime = [NSDate ms_dateFromString: self.dictionary[@"takenDateTime"]];
    }
    return _takenDateTime;
}

- (void) setTakenDateTime: (NSDate*) val
{
    _takenDateTime = val;
    self.dictionary[@"takenDateTime"] = [val ms_toString];
}

@end
