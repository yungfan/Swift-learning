//
//  Person.m
//  Swift项目中调用Objective-C
//
//  Created by 杨帆 on 2019/7/18.
//  Copyright © 2019 杨帆. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)eat{
    NSString *result = [NSString stringWithFormat:@"%@吃饭了", self.name];
    NSLog(@"%@", result);
}
@end
