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
        
        LSIAgent *ethan = [[LSIAgent alloc]
                             initWithCoverName: @"Ethan Hunt"
                             realName: @"Tom Cruise"
                             accessLevel:@8
                             compromised:@false
                             ];
        
    }
    
    
    
    return 0;
}
