//
//  main.m
//  IOS1
//
//  Created by katniss on 2017. 1. 17..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"



int main(int argc, const char * argv[]) {

    
    Person *katniss = [[Person alloc] init];
    katniss.gender = @"woman";
    katniss.age = @"32";
    katniss.phoneNumber = @"010-9511-3682";
    [katniss run];
    [katniss talk];
    
    
    
    
    Person *nicole = [[Person alloc] init];
    nicole.age = @"30";
    nicole.gender = @"woman";
    nicole.birthDay = @"09.25";
    
    
    Warrior *michel = [[Warrior alloc] init];
    michel.health = @"100";
    michel.mana = @"50";
    michel.physicalPower = @"80";
    [michel physicalAttack];
    

    
    Wizard *lenden = [[Wizard alloc] init];
    lenden.magicalPower = @"90";
    lenden.health = @"40";
    [lenden magicalattack];
    

 
    NSLog(@"michel 물리 공격력은 %@입니다.",michel.physicalPower);
    NSLog(@"lenden 마법 공격력은 %@입니다.",lenden.magicalPower);
    NSLog(@"nicole 성별은 %@입니다.",nicole.gender);
    NSLog(@"katniss 나이는 %@입니다.",katniss.age);
    NSLog(@"michel 마나는 %@입니다.",michel.mana);
    NSLog(@"lenden 건강은 %@입니다.",lenden.health);
    
  
        
    
    
    
    
    
    
    
    
    return 0;
}
