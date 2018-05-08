//
//  Doctor.m
//  Patient_Doctor_Objective_C
//
//  Created by Landry Achia Ndong on 2018-05-03.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "Doctor.h"



@implementation Doctor
-(instancetype)initDoctorWithName:(NSString *)name andSpecialaziation:(NSString *)specialization{
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.acceptedPatients = [[NSMutableArray alloc]init];
        self.prescription = [[NSMutableArray alloc] init];
    }
    return self;
}

//checking to see if doctor accepts a given patient
-(BOOL)doctorAcceptsPatient:(Patient *)patient{
    if (patient.patientSaidYesToVisit == 1) {
        if (patient.patientHasValidCardAnswer ==1) {
            NSLog(@"Doctor accepts this patient");
            [self.acceptedPatients addObject:patient.name];
            return TRUE;
        }else{
            NSLog(@"Doctor CANNOT accept this patient");
            return FALSE;
        }
    }else{
        NSLog(@"Patient refused to see a doctor");
        return FALSE;
    }
}

-(NSMutableArray *)requestMedication:(Patient *)patient patientWithSymptoms:(NSMutableArray *)symptoms{
    if ([self.acceptedPatients containsObject:patient.name]) {
        NSLog(@"You were consulted by this doctor %@", self.name);
        if ([symptoms containsObject:@"headache"]) {
            
            [self.prescription addObject:patient.name];
            [self.prescription  addObject:@"paracetamol is prescription"];
        }else if ([symptoms containsObject:@"fever"]){
                [self.prescription addObject:patient.name];
                [self.prescription  addObject:@"Aspirin is your prescription"];
            
        }else if ([symptoms containsObject:@"cold"]){
            [self.prescription addObject:patient.name];
            [self.prescription  addObject:@"Cold Capsules"];
        }
    }
    return  self.prescription;
}


@end
