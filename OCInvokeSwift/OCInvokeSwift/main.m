//
//  main.m
//  OCInvokeSwift
//
//  Created by teacher on 2017/11/6.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1、Swift类必须继承自NSObject 2、新建时创建的桥接文件和Swift调用OC的一样 3、导入的时候不是导入创建的头文件 而是一个命名为“项目名-Swift.h”的头文件 该头文件是自动生成的并且对开发者透明 4、在Swift代码中将需要暴露给OC调用的属性和方法前加上 @objc 5、直接在OC代码中调用Swift
#import "OCInvokeSwift-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *cal =  [[Calculator alloc]init];
        
        NSInteger result = [cal addWithNum1:20 num2:30];
        
        NSLog(@"%ld", (long)result);

        
        
    }
    return 0;
}
