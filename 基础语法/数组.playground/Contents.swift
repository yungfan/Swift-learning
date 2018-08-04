//: Playground - noun: a place where people can play

import UIKit


let a1:[String] = ["a", "b", "c"]

var a2:Array<String> = ["a", "b", "c"]

//合并
var a3 = a1 + a2

print(a3)


a2.append("d")

a2.remove(at: 0)

a2.reverse()

a2[0] = "A"

print(a2)

print(a1)

for var item in a1 {

  print(item)

}

for i in 0..<a1.count {
    
    print(a1[i])

}


// 遍历数组的同时获取下标值
let names = ["a", "b", "c", "d"]

for name in names.enumerated() {
    
    print(name.element)
    
}
