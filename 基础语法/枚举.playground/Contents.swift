//: Playground - noun: a place where people can play

import UIKit


//定义的时候指定枚举值的类型
enum SiJi :Int {

    case Spring = 1
    case Summer = 2
    case Autumn = 3
    case Winter = 4

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

