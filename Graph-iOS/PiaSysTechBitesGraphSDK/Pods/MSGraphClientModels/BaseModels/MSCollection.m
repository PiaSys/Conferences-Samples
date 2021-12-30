// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import "MSCollection.h"
#import "NSDate+MSSerialization.h"

@implementation MSCollection

-(instancetype)initWithArray:(NSArray *)array
                    nextLink:(NSString *)nextLink
              additionalData:(NSDictionary *)additionalData
{
    self = [super init];
    if (self)
    {
        _value = array;
        _nextLink = [NSURL URLWithString:nextLink];
        _additionalData = additionalData;
    }
    return self;
}

- (instancetype)initWithData:(NSData *)data error:(NSError *__autoreleasing *)error
{
    self = [super initWithData:data error:error];
    if(self)
    {
        self.value = [[self getDictionary] objectForKey:@"value"];
        self.nextLink = [NSURL URLWithString:[[self getDictionary] objectForKey:@"@odata.nextLink"]];
        self.additionalData = [self getDictionary];
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if(self)
    {
        self.value = [[self getDictionary] objectForKey:@"value"];
        self.nextLink = [NSURL URLWithString:[[self getDictionary] objectForKey:@"@odata.nextLink"]];
        self.additionalData = [self getDictionary];
    }
    return self;
}

@end
