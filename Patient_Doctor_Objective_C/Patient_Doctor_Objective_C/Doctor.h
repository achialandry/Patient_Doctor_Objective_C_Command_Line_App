//
//  Doctor.h
//  Patient_Doctor_Objective_C
//
//  Created by Landry Achia Ndong on 2018-05-03.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"


@interface Doctor : NSObject 

# pragma mark - Public properties

//Doctor's Name
@property  NSString *name;

//Doctor's Specialization
@property  NSString *specialization;

//patients accepted by doctor
@property NSMutableArray *acceptedPatients;

//doctor prescription
@property NSMutableArray *prescription;



# pragma mark - Public properties
-(instancetype)initDoctorWithName:(NSString *)name andSpecialaziation:(NSString *)specialization;
-(BOOL)doctorAcceptsPatient:(Patient *)patient;
-(NSMutableArray *)requestMedication:(Patient *)patient patientWithSymptoms:(NSMutableArray *)symptoms;


@end
