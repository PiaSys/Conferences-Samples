// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphManagedAppDiagnosticStatus : MSObject

@property (nullable, nonatomic, setter=setValidationName:, getter=validationName) NSString* validationName;
@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
@property (nullable, nonatomic, setter=setMitigationInstruction:, getter=mitigationInstruction) NSString* mitigationInstruction;

@end
