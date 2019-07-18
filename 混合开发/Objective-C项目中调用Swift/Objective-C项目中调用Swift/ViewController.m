//
//  ViewController.m
//  Objective-C项目中调用Swift
//
//  Created by 杨帆 on 2019/7/18.
//  Copyright © 2019 杨帆. All rights reserved.
//

#import "ViewController.h"
#import <Objective_C项目中调用Swift-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Person *person = [[Person alloc]init];
    person.name = @"YungFan";
    [person eat];
}


@end
