//
//  Person.m
//  KVO
//
//  Created by DM on 2017/4/13.
//  Copyright © 2017年 HZ. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>
@interface Person()

@property(nonatomic,copy) NSString *name;

@end

@implementation Person

//当这个类调用一个没有实现的类方法就会来到这里
//+(BOOL)resolveClassMethod:(SEL)sel
//{
//
//}

void eat(id self, SEL _cmd){
    NSLog(@"调用了 %@ %@",self,NSStringFromSelector(_cmd));
}

void eat1(id self, SEL _cmd,id obj){
    NSLog(@"假假按揭啊 %@",obj);
}

//当一个类调用了一个没有实现的对象方法
+(BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(eat:)) {
        /*
         1.Class
         2.name 方法编号
         3.imp 方法实现，是一个函数指针
         4.types 返回值类型
         */
        class_addMethod([self class], sel, (IMP)eat1, "v@:");
    }
    return [super resolveInstanceMethod: sel];
}

//监听到了object 的 keyPath属性变化为 change
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"监听到了%@ 的 %@ 属性变化为 %@",object,keyPath,change);
}

@end
