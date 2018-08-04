//
//  ViewController.swift
//  命名空间与自定义View
//
//  Created by teacher on 2017/11/10.
//  Copyright © 2017年 teacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        self.view.backgroundColor = UIColor.red
        
        //<ÂëΩÂêçÁ©∫Èó¥‰∏éËá™ÂÆö‰πâView.ViewController: 0x7f807b406210>  打印出来的东西和OC不太一样
        print(self)
        
        //默认情况下 ——> <命名空间.ViewController: 0x7f807b406210>
        //使用场景：现在有四个tab，这四个tab并不是写死的，而是根据服务器返回的json数据来动态决定，服务器返回的json类似于 “VC:DynamicViewController image:"" highlightImage:"" title:"双11"”
        //通过类名动态初始化VC，OC：[[DynamicViewController alloc]init]; 但是在Swift当中不能这样干，因为它有一个命名空间，初始化的时候必须带上命名空间: 命名空间.DynamicViewController()
        //如何修改：可以进入是Build Settings中选中"All", 搜索product name,即可修改
        //程序中如何获取命名空间
        
        let vcName = "DynamicViewController"
        
        // 从info.plist读取namespace
        let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        // 拼接类名的完整格式,即namespace.类名,vcName即控制器的类名
        let clsName = namespace + "." + vcName
        
        let cls: AnyClass = NSClassFromString(clsName)!
        // 得到相应的控制器
        let vc = cls.alloc() as! UIViewController
        
        // present必须在viewDidAppear或者点击时间里，不能放在viewDidLoad，毕竟你不能对一个只Load完毕，却还没有显示出来的ViewController要求太多
        self.present(vc, animated: true, completion: nil)
        
        //        let dvc = DynamicViewController()
        //        self.present(dvc, animated: true, completion: nil)
        
        
    }
    
    


}

