// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSiteCollection()
{
    NSString* _hostname;
    MSGraphRoot* _root;
}
@end

@implementation MSGraphSiteCollection

- (NSString*) hostname
{
    if([[NSNull null] isEqual:self.dictionary[@"hostname"]])
    {
        return nil;
    }   
    return self.dictionary[@"hostname"];
}

- (void) setHostname: (NSString*) val
{
    self.dictionary[@"hostname"] = val;
}

- (MSGraphRoot*) root
{
    if(!_root){
        _root = [[MSGraphRoot alloc] initWithDictionary: self.dictionary[@"root"]];
    }
    return _root;
}

- (void) setRoot: (MSGraphRoot*) val
{
    _root = val;
    self.dictionary[@"root"] = val;
}

@end
