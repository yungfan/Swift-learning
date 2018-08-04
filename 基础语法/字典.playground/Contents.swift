//: Playground - noun: a place where people can play

import UIKit


var dic1: [String : Any] = ["name":"zhangsan", "age":20, "interest":[1,2,3]]

//print(dic1["name"] ?? "Hello")
dic1["age"] = 30

dic1["sex"] = "male"

dic1.removeValue(forKey: "age")

print(dic1)

// 元组的方式遍历——推荐
for(key, value) in dic1{

    print(key)
    print(value)

}


// 遍历字典中所有的值
for value in dic1.values {
    print(value)
}

// 遍历字典中所有的键
for key in dic1.keys {
    print(key)
}

var dic2: [String : Int] = ["grade":2014]
var dic3: [String : Int] = ["age":50]

for(key, value) in dic3{

    dic2[key] = value

}

print(dic2)
