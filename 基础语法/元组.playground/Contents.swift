//: Playground - noun: a place where people can play

import UIKit


//[]  {}  ()


//如果不写别名 默认以 .0 .1 ...的方式来访问元组中的数据
var t:(String, String) = ("a", "b")
//如果写了别名 就以别名的方式来访问元组中的数据
var student = (id:"1001", name:"张三", english_score:30, chinese_score:90)

print(student.id)


//元组中的数据可以是类型不同的元素
let (a, b, c) = (404, "Not Found", "HTTP STATUS")
print(a)
print(b)
print(c)

//运用
let array = ["a", "b", "c", "d"]

for (a, b) in array.enumerated(){
  
    print(a)
    print(b)

}

