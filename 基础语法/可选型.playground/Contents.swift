//: Playground - noun: a place where people can play

import UIKit

let name:String = "Hello"
print(name)

//let str = nil

//1
let str :Optional<String> = nil


//2
var s : String? = nil


//s = "Hi"

//因为s已经是一个Optional的“包裹”的变量 如果想取出其中的值 就需要“解包” 解包需要用到!
//if s != nil {
//    print(s!)
//}



// if let 常量名 = 可选型变量  ==> 当可选型有值的时候取出来打印，自动解包
//if let 常量名=可选变量名 ... {
//    语句
//}

if let r = s {

    print(r)

}



//隐式解析可选类型
var a :String! = nil

a = "Hello"

print(a)



