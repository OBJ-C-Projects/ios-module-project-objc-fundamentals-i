//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by FGT MAC on 5/11/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName: (NSString *)realName
                      accessLevel: (NSNumber *)accessLevel
                      compromised: (NSNumber *)compromised {
    
    self = [super init];
    
    if(self) {
        _coverName = coverName;
        _realName = realName;
        _accessLevel = accessLevel;
        _compromised = compromised;
    }
    
    return self;
}


@end
