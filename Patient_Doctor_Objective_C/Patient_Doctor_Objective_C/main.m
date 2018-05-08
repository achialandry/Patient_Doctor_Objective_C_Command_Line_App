//
//  main.m
//  Patient_Doctor_Objective_C
//
//  Created by Landry Achia Ndong on 2018-05-06.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        //MUTABLE ARRAY TO CONTAIN PRESCRIPTIONS
        NSMutableArray *patientPrescriptions = [[NSMutableArray alloc] init];
        
        
        
        //initializing Doctor
        Doctor *doctorA = [[Doctor alloc] initDoctorWithName:@"Roger" andSpecialaziation:@"Family Medicine"];
        Doctor *doctorB = [[Doctor alloc] initDoctorWithName:@"Peter" andSpecialaziation:@"Gynaecologies"];
        
        //initializing the patient
        Patient *patientOne = [[Patient alloc]initPatientWithName:@"Serge" andAge:@"23" andSex:@"M"];
        Patient *patientTwo = [[Patient alloc]initPatientWithName:@"Aaron" andAge:@"33" andSex:@"M"];
        
        
        while (TRUE) {
            NSLog(@"Type yes if patient should see a doctor...");
            //patient response whether or not to see a doctor
            char input[100];
            fgets (input, 100, stdin);
            
            
            
            NSString *patientSeesDoctor = [[NSString alloc] initWithUTF8String:input];
            NSString *patientSeestheDoctor = [patientSeesDoctor stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            [patientOne patientVisitDoctor:patientSeestheDoctor];
            
            //patient response if they have valid card
            NSLog(@"Type yes if patient has a valid Health Card...\n");
            char validCard[100];
            fgets (validCard, 100, stdin);
            NSString *patientHasCard = [[NSString alloc] initWithUTF8String:validCard];
            NSString *patientwithValidCard = [patientHasCard stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            [patientOne patientHasValidHealthCard:patientwithValidCard];
            
            //doctorA accepts patient with valid card
            [doctorA doctorAcceptsPatient:patientOne];
            
            if ([doctorA doctorAcceptsPatient:patientOne]) {
                //patient symptoms
                NSLog(@"Type a symptom patient is suffering from (type either, cold, fever, headache)...\n");
                char symptoms[100];
                fgets (symptoms, 100, stdin);
                
                NSString *symptomsInput = [[NSString alloc] initWithUTF8String:symptoms];
                NSString *symptomOfPatient = [symptomsInput stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                [patientOne symptomsPatientHas:symptomOfPatient];
                
                NSLog(@"%@", patientOne.symptoms[0]);
                
                [doctorA requestMedication:patientOne patientWithSymptoms:patientOne.symptoms];
                
                //            adding prescription to global on main
                [patientPrescriptions addObject:doctorA.prescription];
                
                NSLog(@"%@", patientPrescriptions[0]);
            }else{
                NSLog(@"Sorry we can't help you");
            }
            
        }
        
        
        
    }
    return 0;
}
