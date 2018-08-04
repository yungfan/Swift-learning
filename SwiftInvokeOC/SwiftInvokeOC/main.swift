//
//  main.swift
//  SwiftInvokeOC
//
//  Created by teacher on 2017/11/3.
//  Copyright © 2017年 teacher. All rights reserved.
//  如果是自己新建的桥接文件，那么可能会因为找不到桥接文件而调用失败，需要在building setting 里搜索bridging 关键字，将后面的值改成实际桥接文件的路径。

import Foundation

var cal = Calculator()

//调用实例fangfa
var res = cal.add(23, andNum: 42)

//调用类方法
res =  Calculator.minus(20, andNum: 10)

//访问属性
cal.number = 10

print(res)

