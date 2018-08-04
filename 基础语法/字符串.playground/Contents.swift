//: Playground - noun: a place where people can play

import UIKit

var s = "Hello, playground"

print(s.characters.count)

for c in s.characters {

   print(c)

}

let str1 = "Hello"
let str2 = "World"
let str3 = str1 + str2

var a :Int = 10
var b: String = "我今年"

//我今年10岁
//\(变量名)
print("\(b)\(a)岁")

let min = 3
let second = 4

//结构体的构造函数
let time = String(format: "%02d:%02d", arguments: [min, second])


//转OC中的NSString
let str = "abcdefg"

var sub = (str as NSString).length

print(sub)


