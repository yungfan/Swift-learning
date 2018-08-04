//
//  Calculator.h
//  SwiftInvokeOC
//
//  Created by teacher on 2017/11/3.
//  Copyright © 2017年 teacher. All rights reserved.
//  1、新建一个Swift项目  2、新建一个OC类，创建对应的属性和方法 3、在桥文件中 #import OC头文件 4、直接可以在Swift文件中使用OC里面定义的内容（可能反应有点慢）


#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property(nonatomic, assign)int number;

-(int)add:(int)num1 AndNum:(int)num2;

+(int)minus:(int)num1 AndNum:(int)num2;

@end
