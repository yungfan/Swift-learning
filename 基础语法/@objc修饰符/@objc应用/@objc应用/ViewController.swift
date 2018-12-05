//
//  ViewController.swift
//  @objc应用
//
//  Created by stu1 on 2018/12/4.
//  Copyright © 2018年 abc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton(type: UIButton.ButtonType.contactAdd)
        
        btn.center = self.view.center
        
        btn.addTarget(self, action: #selector(click), for: UIControl.Event.touchUpInside)
        
        self.view .addSubview(btn)
    }

    
    @objc func click(btn:UIButton){
        
        print("按钮被点击了")
        
    }
}

