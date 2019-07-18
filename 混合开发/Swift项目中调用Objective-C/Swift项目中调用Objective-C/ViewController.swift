//
//  ViewController.swift
//  Swift项目中调用Objective-C
//
//  Created by 杨帆 on 2019/7/18.
//  Copyright © 2019 杨帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //直接像实用Swift对象一样使用OC对象
        let person = Person()
        person.name = "YungFan"
        person.eat()
    }


}

