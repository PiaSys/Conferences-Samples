// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerTaskDetails()
{
    NSString* _plannerTaskDetailsDescription;
    MSGraphPlannerPreviewType* _previewType;
    MSGraphPlannerExternalReferences* _references;
    MSGraphPlannerChecklistItems* _checklist;
}
@end

@implementation MSGraphPlannerTaskDetails

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerTaskDetails";
    }
    return self;
}
- (NSString*) plannerTaskDetailsDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setPlannerTaskDetailsDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphPlannerPreviewType*) previewType
{
    if(!_previewType){
        _previewType = [self.dictionary[@"previewType"] toMSGraphPlannerPreviewType];
    }
    return _previewType;
}

- (void) setPreviewType: (MSGraphPlannerPreviewType*) val
{
    _previewType = val;
    self.dictionary[@"previewType"] = val;
}

- (MSGraphPlannerExternalReferences*) references
{
    if(!_references){
        _references = [[MSGraphPlannerExternalReferences alloc] initWithDictionary: self.dictionary[@"references"]];
    }
    return _references;
}

- (void) setReferences: (MSGraphPlannerExternalReferences*) val
{
    _references = val;
    self.dictionary[@"references"] = val;
}

- (MSGraphPlannerChecklistItems*) checklist
{
    if(!_checklist){
        _checklist = [[MSGraphPlannerChecklistItems alloc] initWithDictionary: self.dictionary[@"checklist"]];
    }
    return _checklist;
}

- (void) setChecklist: (MSGraphPlannerChecklistItems*) val
{
    _checklist = val;
    self.dictionary[@"checklist"] = val;
}


@end
