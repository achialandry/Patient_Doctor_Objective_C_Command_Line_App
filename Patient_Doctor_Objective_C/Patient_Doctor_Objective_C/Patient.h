//
//  Patient.h
//  Patient_Doctor_Objective_C
//
//  Created by Landry Achia Ndong on 2018-05-03.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Doctor;




@interface Patient : NSObject

# pragma mark - Public properties

//patient's name
@property NSString *name;

//patient's age
@property NSString* age;

//patient's sex
@property NSString *sex;

//patient's health card
@property NSString *validHealthCard;

//patient's symptoms
@property NSMutableArray *symptoms;

//doctor patient visited
@property NSString *patientDoctor;

//visit doctor answer
@property int patientSaidYesToVisit;

//patient has valid card
@property int patientHasValidCardAnswer;



# pragma mark - Public properties
-(instancetype)initPatientWithName:(NSString *)name andAge:(NSString *)age andSex:(NSString *)sex;
-(void)patientVisitDoctor:(NSString *)visitAnswer;

-(void)patientHasValidHealthCard:(NSString *)validHealthCard;

-(void)symptomsPatientHas:(NSString *)symptoms;

@end
