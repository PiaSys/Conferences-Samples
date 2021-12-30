// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallMediaState()
{
    MSGraphMediaState* _audio;
}
@end

@implementation MSGraphCallMediaState

- (MSGraphMediaState*) audio
{
    if(!_audio){
        _audio = [self.dictionary[@"audio"] toMSGraphMediaState];
    }
    return _audio;
}

- (void) setAudio: (MSGraphMediaState*) val
{
    _audio = val;
    self.dictionary[@"audio"] = val;
}

@end
