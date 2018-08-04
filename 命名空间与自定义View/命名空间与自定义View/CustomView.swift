//
//  CustomView.swift
//  命名空间与自定义View
//
//  Created by teacher on 2017/11/10.
//  Copyright © 2017年 teacher. All rights reserved.
//

import UIKit

class CustomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    //当用sb或者xib定义界面的时候会调用，如果是纯代码可以写一个fatalError，否则要去掉
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
