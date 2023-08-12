//
//  main.swift
//  SwiftCallCPP
//
//  Created by 杨帆 on 2023/8/12.
//

import Foundation

// 直接使用C++的类型
let person = Person(name: "zhaoliu", age: 23)
print(person.name, person.age)
// 直接调用C++的函数
for person in allPerson() {
    print(person.name, person.age)
}
