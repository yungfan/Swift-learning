//
//  ViewController.swift
//  iOS-Swift
//
//  Created by stu1 on 2018/11/27.
//  Copyright © 2018年 abc. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    fileprivate var data:String?
    private var dataArray:[String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //由于Person是另外一个类中的 属性是私有修饰的 所以这边访问会出错
        let person = Person()
        
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //同一个模块的文件可以直接访问 不像OC需要导入
        SecViewController()
    }
}

extension ViewController {
    
    func test(){
        //扩展中可以访问本文件中的fileprivate和private
        self.data = "Hello"
        self.dataArray = ["World"]
    }
    
    
}

