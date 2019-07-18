//
//  Person.swift
//  Objective-C项目中调用Swift
//
//  Created by 杨帆 on 2019/7/18.
//  Copyright © 2019 杨帆. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    //OC类能访问
    @objc var name:String?
    //OC类不能访问
    var age:Int?
    //OC类能访问
    @objc func eat(){
        print("\(name ?? "")吃饭了")
    }

}
