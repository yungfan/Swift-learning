//: Playground - noun: a place where people can play

import UIKit


// is
let a:[Any] = ["a", "b", "c", 1]

for b in a{

    print("----")

    //类型判断
    if b is Int {
        
        print("这是一个Int类型")
    }
    
    
}

// as
class Animal {}

class Cat: Animal {}

let cat = Cat()

//（1）从派生类转换为基类，向上转型
let animal = cat as Animal


//（2）数值类型转换
let num1 = 42 as CGFloat
let num2 = (42 / 2) as Double
