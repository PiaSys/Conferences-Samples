// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMessageRuleActions()
{
    NSString* _moveToFolder;
    NSString* _copyToFolder;
    BOOL _delete;
    BOOL _permanentDelete;
    BOOL _markAsRead;
    MSGraphImportance* _markImportance;
    NSArray* _forwardTo;
    NSArray* _forwardAsAttachmentTo;
    NSArray* _redirectTo;
    NSArray* _assignCategories;
    BOOL _stopProcessingRules;
}
@end

@implementation MSGraphMessageRuleActions

- (NSString*) moveToFolder
{
    if([[NSNull null] isEqual:self.dictionary[@"moveToFolder"]])
    {
        return nil;
    }   
    return self.dictionary[@"moveToFolder"];
}

- (void) setMoveToFolder: (NSString*) val
{
    self.dictionary[@"moveToFolder"] = val;
}

- (NSString*) getCopyToFolder
{
    if([[NSNull null] isEqual:self.dictionary[@"copyToFolder"]])
    {
        return nil;
    }   
    return self.dictionary[@"copyToFolder"];
}

- (void) setCopyToFolder: (NSString*) val
{
    self.dictionary[@"copyToFolder"] = val;
}

- (BOOL) delete
{
    _delete = [self.dictionary[@"delete"] boolValue];
    return _delete;
}

- (void) setDelete: (BOOL) val
{
    _delete = val;
    self.dictionary[@"delete"] = @(val);
}

- (BOOL) permanentDelete
{
    _permanentDelete = [self.dictionary[@"permanentDelete"] boolValue];
    return _permanentDelete;
}

- (void) setPermanentDelete: (BOOL) val
{
    _permanentDelete = val;
    self.dictionary[@"permanentDelete"] = @(val);
}

- (BOOL) markAsRead
{
    _markAsRead = [self.dictionary[@"markAsRead"] boolValue];
    return _markAsRead;
}

- (void) setMarkAsRead: (BOOL) val
{
    _markAsRead = val;
    self.dictionary[@"markAsRead"] = @(val);
}

- (MSGraphImportance*) markImportance
{
    if(!_markImportance){
        _markImportance = [self.dictionary[@"markImportance"] toMSGraphImportance];
    }
    return _markImportance;
}

- (void) setMarkImportance: (MSGraphImportance*) val
{
    _markImportance = val;
    self.dictionary[@"markImportance"] = val;
}

- (NSArray*) forwardTo
{
    if(!_forwardTo){
        
    NSMutableArray *forwardToResult = [NSMutableArray array];
    NSArray *forwardTo = self.dictionary[@"forwardTo"];

    if ([forwardTo isKindOfClass:[NSArray class]]){
        for (id tempRecipient in forwardTo){
            [forwardToResult addObject:tempRecipient];
        }
    }

    _forwardTo = forwardToResult;
        
    }
    return _forwardTo;
}

- (void) setForwardTo: (NSArray*) val
{
    _forwardTo = val;
    self.dictionary[@"forwardTo"] = val;
}

- (NSArray*) forwardAsAttachmentTo
{
    if(!_forwardAsAttachmentTo){
        
    NSMutableArray *forwardAsAttachmentToResult = [NSMutableArray array];
    NSArray *forwardAsAttachmentTo = self.dictionary[@"forwardAsAttachmentTo"];

    if ([forwardAsAttachmentTo isKindOfClass:[NSArray class]]){
        for (id tempRecipient in forwardAsAttachmentTo){
            [forwardAsAttachmentToResult addObject:tempRecipient];
        }
    }

    _forwardAsAttachmentTo = forwardAsAttachmentToResult;
        
    }
    return _forwardAsAttachmentTo;
}

- (void) setForwardAsAttachmentTo: (NSArray*) val
{
    _forwardAsAttachmentTo = val;
    self.dictionary[@"forwardAsAttachmentTo"] = val;
}

- (NSArray*) redirectTo
{
    if(!_redirectTo){
        
    NSMutableArray *redirectToResult = [NSMutableArray array];
    NSArray *redirectTo = self.dictionary[@"redirectTo"];

    if ([redirectTo isKindOfClass:[NSArray class]]){
        for (id tempRecipient in redirectTo){
            [redirectToResult addObject:tempRecipient];
        }
    }

    _redirectTo = redirectToResult;
        
    }
    return _redirectTo;
}

- (void) setRedirectTo: (NSArray*) val
{
    _redirectTo = val;
    self.dictionary[@"redirectTo"] = val;
}

- (NSArray*) assignCategories
{
    if([[NSNull null] isEqual:self.dictionary[@"assignCategories"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignCategories"];
}

- (void) setAssignCategories: (NSArray*) val
{
    self.dictionary[@"assignCategories"] = val;
}

- (BOOL) stopProcessingRules
{
    _stopProcessingRules = [self.dictionary[@"stopProcessingRules"] boolValue];
    return _stopProcessingRules;
}

- (void) setStopProcessingRules: (BOOL) val
{
    _stopProcessingRules = val;
    self.dictionary[@"stopProcessingRules"] = @(val);
}

@end
