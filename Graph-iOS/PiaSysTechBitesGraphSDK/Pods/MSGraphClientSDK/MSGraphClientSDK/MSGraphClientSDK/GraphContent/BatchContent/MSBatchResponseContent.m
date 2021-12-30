//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSBatchResponseContent.h"

@interface MSBatchResponseContent()
@property (strong, nonatomic) NSDictionary *batchResponseDictionary;
@end

@implementation MSBatchResponseContent

-(instancetype)initWithBatchResponseData:(NSData *)batchResponseData options:(NSJSONReadingOptions)options error:(NSError *__autoreleasing *)error
{
    NSParameterAssert(batchResponseData);
    self = [super init];
    if(self)
    {
        _batchResponseDictionary = [NSJSONSerialization JSONObjectWithData:batchResponseData options:options error:error];
    }
    return self;
}

- (NSDictionary *)getResponseById:(NSString *)requestId
{
    for(NSDictionary *responseDict in [_batchResponseDictionary objectForKey:@"responses"])
    {
        if([[responseDict objectForKey:@"id"] isEqualToString:requestId])
        {
            return responseDict;
        }
    }
    return nil;
}

- (NSDictionary *)getResponses
{
    return _batchResponseDictionary;
}

@end

