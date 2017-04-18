//
//  ViewController.m
//  KVO
//
//  Created by DM on 2017/4/13.
//  Copyright © 2017年 HZ. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Dog.h"

@interface ViewController ()

//@property(nonatomic,retain) Person *p;
//@property(nonatomic,retain) Dog *d;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *p = [Person new];
    if ([p isMan])
    {
        
    }
    [p performSelector:@selector(eat:) withObject:@"的多吃点菜但是测试"];
    
    NSNumber *packId = @(2);
    NSNumber *userId = @(2222);
    NSNumber *proxyType = @(200202);
    NSDictionary *param = NSDictionaryOfVariableBindings(packId,userId,proxyType);
    
    NSString *strig = NULL;
    NSLog(@"%@",strig);
    
//    self.p = [[Person alloc]init];
//    self.d = [[Dog alloc]init];
//
//    //注册监听
//    [self.d addObserver:self.p forKeyPath:@"age" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
    
    
}

/*
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.d.age = 99;
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
