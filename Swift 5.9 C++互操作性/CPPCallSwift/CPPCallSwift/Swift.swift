//
//  Swift.swift
//  CPPCallSwift
//
//  Created by 杨帆 on 2023/8/12.
//

import Foundation

public func swiftFunc() {
    print("This is a swift func")
}

public class Person {
    public var name: String
    public var age: Int

    public init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    public func study() {
        print("好好学习")
    }
}
