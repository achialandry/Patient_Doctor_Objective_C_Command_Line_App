//
//  Patient.m
//  Patient_Doctor_Objective_C
//
//  Created by Landry Achia Ndong on 2018-05-03.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initPatientWithName:(NSString *)name andAge:(NSString *)age andSex:(NSString *)sex{
    self = [super init];
    if (self) {
        self.symptoms = [[NSMutableArray alloc] init];
        self.name = name;
        self.age = age;
        self.sex = sex;
    }
    return self;
}

//patient visits doctor
-(void)patientVisitDoctor:(NSString *)visitAnswer{
    [visitAnswer lowercaseString];
    if ([visitAnswer isEqualToString:@"yes"]) {
        NSLog(@"Patient Visits Doctor");
        self.patientSaidYesToVisit = 1;
    }else{
        NSLog(@"Patient Refused to visit Doctor");
        self.patientSaidYesToVisit = 0;
    }
}

//checking if patient has valid card
- (void)patientHasValidHealthCard:(NSString *)validHealthCard {
    [validHealthCard lowercaseString];
    if ([validHealthCard isEqualToString:@"yes"]) {
        
        self.patientHasValidCardAnswer = 1;
    }else if([validHealthCard isEqualToString:@"no"]){
        self.patientHasValidCardAnswer = 0;
    }else{
        NSLog(@"You must reply yes or no if you have valid health card!");
        self.patientHasValidCardAnswer = 0;
    }
}

//entering all symptoms a patient has
- (void)symptomsPatientHas:(NSString *)symptoms {
    [self.symptoms addObject:symptoms];
    NSLog(@"Symptoms patient has is %@", symptoms);
}






@end
