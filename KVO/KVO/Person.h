//
//  Person.h
//  KVO
//
//  Created by DM on 2017/4/13.
//  Copyright © 2017年 HZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,readonly,getter=isMan) BOOL man;

@end
