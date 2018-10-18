//: Playground - noun: a place where people can play

import UIKit

//定义方式一
enum Person {
    
    case Zhangsan
    case Lisi
    case Wangwu
    
}
//定义方式二
enum Person2{
    
    case Zhangsan, Lisi, Wangwu
}

//赋值
enum SiJi :Int {

    case Spring = 1
    case Summer = 2
    case Autumn = 3
    case Winter = 4

}

enum Method :Double {
    
    case Add = 1.0
    case Sub = 2.0
    case Mul = 3.0
    case Div = 4.0
    
}


enum Compass:String{

    case North = "A", South = "B", East = "C", West = "D"

}

var compass = Compass.North

//rawValue 与 hashValue
print(compass.rawValue)
print(compass.hashValue)


//此时查看a的类型 发现是一个可选型
let a = SiJi(rawValue:2)


if let p = a {
    
    switch p {
    
        //类型推断
        case .Spring:
            print("Spring")
        case .Summer:
            print("Summer")
        case .Autumn:
            print("Autumn")
        case .Winter:
            print("Winter")
        default:
            print("error")
    }
}


switch a! {
    
case .Spring:
    print("Spring")
case .Summer:
    print("Summer")
case .Autumn:
    print("Autumn")
case .Winter:
    print("Winter")
default:
    print("error")
}

