//
//  main.m
//  NOCList-ObjC
//
//  Created by FGT MAC on 5/11/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
 
        LSIAgent *a1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:false];
        LSIAgent *a2 = [[LSIAgent alloc] initWithCoverName: @"Jim Phelps" realName: @"Jon Voight" accessLevel:9 compromised:true];
        LSIAgent *a3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:false];
        LSIAgent *a4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:true];
        LSIAgent *a5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:false];
        LSIAgent *a6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:false];
        LSIAgent *a7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott " accessLevel:5 compromised:true];
        LSIAgent *a8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:false];
        LSIAgent *a9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:true];
        LSIAgent *a10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:true];
        LSIAgent *a11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:false];
        
        //Create an array of agents
        NSArray *agents = [[NSArray alloc] initWithObjects: a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, nil];
        
        //loop over the agents to check the ammount of compromised agents
        NSInteger total = 0;
        NSInteger totalClean = 0;
        for (LSIAgent *agent in agents ){
            if(agent.compromised.boolValue == true){
                total++;
            }else{
                NSLog(@"Agent is clean: %@.", agent.coverName);
                totalClean ++;
            };
        };
        NSLog(@"Total compromised agents: %li",(long)total);
        NSLog(@"Total clean agents: %li",(long)totalClean);
        
        
        //STEP 5 create another loop instead of reuse the one above to practice
        for(LSIAgent *agent in agents){
            if(agent.accessLevel.intValue >= 8 ){
                if(agent.compromised.boolValue == true){
                    NSLog(@"Real name: %@ Access level: %i **WARNING** **COMPROMISED**",agent.realName, agent.accessLevel.intValue);
                }else{
                    NSLog(@"Real name: %@ Access level: %i",agent.realName, agent.accessLevel.intValue);
                };
            };
        };
        
        
    }
    
    
    
    return 0;
}
