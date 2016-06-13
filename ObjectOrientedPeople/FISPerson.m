//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Flatiron School on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()
//private interface 
@property (nonatomic,strong, readwrite)NSString* name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (nonatomic, strong, readwrite) NSMutableArray* skills;



@end

@implementation FISPerson

-(instancetype)init
{
    self = [self initWithName:@"Mark"
                   ageInYears:29
               heightInInches:71];
    return self;
}

-(instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger) ageInYears
{
    if (self) {
        
        _name = name;
        _ageInYears = ageInYears;
        self = [self initWithName:name ageInYears:ageInYears heightInInches:67];
    }
    return self;
}

-(instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches
{
    self = [super init];
    if (self) {
        
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc]init];
    }
    return self;
}
//GO BACK TO THIS METHOD
-(NSString*)celebrateBirthday
{
    self.ageInYears++;
    NSString* newString = [self ordinalForInteger:self.ageInYears];
    newString = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, newString, self.name];
    
    return newString.uppercaseString;
}
-(NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}
//Done
-(void)learnSkillBash
{
    if(![self.skills containsObject:@"bash"])
    {
        [self.skills addObject:@"bash"];
    }
}
//Done
-(void)learnSkillXcode
{
    if(![self.skills containsObject:@"Xcode"])
    {
        [self.skills addObject:@"Xcode"];
    }
}
//Done
-(void)learnSkillObjectiveC
{
    if(![self.skills containsObject:@"Objective-C"])
    {
        [self.skills addObject:@"Objective-C"];
    }
}
//Done
-(void)learnSkillObjectOrientedProgramming
{
    if(![self.skills containsObject:@"Object-Oriented Programming"])
    {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}
//Done
-(void)learnSkillInterfaceBuilder
{
    if(![self.skills containsObject:@"Interface Builder"])
    {
        [self.skills addObject:@"Interface Builder"];
    }
}
//Done
-(BOOL)isQualifiedTutor
{
    if([self.skills count] >= 4)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
