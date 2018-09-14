import UIKit

//基本类型
var a: UInt = 10
let maxValue = Int32.max
let minValue = UInt8.min
var b:Int = -1

var c:Double = 1.5

let d = Double(a) + Double(b) + c

//Bool: true  false

var e = true
e = false

//if(1){}
//
//if(0){}else{}

//元组
let f = (1, "zhangsan", 20, "171000001", "移动应用开发", "male")
let g = (id:1, name:"zhangsan", age:20, no:"171000001", zy:"移动应用开发", sex:"male")
//下标的方式访问
print(f.3)
//别名的方式访问
print(g.sex)


var dic = ["id":"1", "name":"zhangsan"]

for (key, value) in dic {
    
    print("\(key) -- \(value)")
}


//{"key1":"value1", "key2":"value2", ....}
//
//for(int i = 0; i<dic.allKeys.count; i++){
//
//
//}


var num1 = 10
var num2 = 20
//比较运算符返回的是Bool类型的值
var result = num1 == num2


var con1 = true
var con2 = false

//与或非
print(!con1)
print(!con2)
print(con1 && con2)
print(con1 || con2)

//区间运算符 [] (] () [)

for i in 0...9 {
    
    print(i)
}

print("-------------------")

for i in 0..<9 {
    
    print(i)
}


//1.可选性如果没有赋值，值为nil,一旦赋值后，就不为nil了  ==》 可选性要么有值，要么为nil
var option:Int?
//封包
option = 10
//2.直接输出可选项，它是一个：Optional(value)
print(option)

//3.解包 前提是必须有值
var sum = 20 + option!
