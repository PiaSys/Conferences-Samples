// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppHostedMediaConfig()
{
    NSString* _blob;
}
@end

@implementation MSGraphAppHostedMediaConfig

- (NSString*) blob
{
    if([[NSNull null] isEqual:self.dictionary[@"blob"]])
    {
        return nil;
    }   
    return self.dictionary[@"blob"];
}

- (void) setBlob: (NSString*) val
{
    self.dictionary[@"blob"] = val;
}

@end
