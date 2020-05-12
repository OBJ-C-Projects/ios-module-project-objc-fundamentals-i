//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by FGT MAC on 5/11/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

//Creating properties
@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

//Initializing properties
- (instancetype)initWithCoverName:(NSString *)coverName
                realName: (NSString *)realName
                //Convert from NSNumber to int
                accessLevel: (int)accessLevel
                //Convert from NSNumber to BOOL
                compromised: (BOOL)compromised;


@end

NS_ASSUME_NONNULL_END
