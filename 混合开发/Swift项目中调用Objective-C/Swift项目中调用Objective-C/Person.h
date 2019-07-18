//
//  Person.h
//  Swift项目中调用Objective-C
//
//  Created by 杨帆 on 2019/7/18.
//  Copyright © 2019 杨帆. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
-(void)eat;
@end

NS_ASSUME_NONNULL_END
