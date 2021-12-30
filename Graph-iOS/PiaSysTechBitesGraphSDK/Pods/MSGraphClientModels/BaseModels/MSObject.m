// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import "MSObject.h"

@interface MSObject()

@property NSMutableDictionary *dictionary;

@end

@implementation MSObject

- (instancetype)init
{
   return [self initWithDictionary:[NSMutableDictionary new]];
}

-(instancetype)initWithData:(NSData *)data error:(NSError *__autoreleasing *)error
{
    if(!data)
    {
        return nil;
    }
    self = [super init];
    if(self)
    {
        self.dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
    }
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (!dictionary)
    {
        return nil;
    }
    self = [super init];
    if(self)
    {
        self.dictionary = [NSMutableDictionary dictionaryWithDictionary:dictionary];
    }
    return self;
}

-(NSMutableDictionary *)getDictionary
{
    return [self.dictionary mutableCopy];
}

- (NSData *)getSerializedDataWithError:(NSError *__autoreleasing *)error
{
    return [NSJSONSerialization dataWithJSONObject:self.dictionary options:kNilOptions error:error];
}
@end
