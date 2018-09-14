//: Playground - noun: a place where people can play

import UIKit

//UITableViewDataSource


@objc protocol MyDatasource{

    func numberOfData() -> Int;
    func dataOfItem();
    
    @objc optional func heightForItem()  -> Float;
    

}


//swift遵循协议 : 协议名
class MyView {
    

}

var myview = MyView()

//myview.dataOfItem()
//myview.numberOfData()





extension MyView : MyDatasource{

    func dataOfItem() {
        
        print("dataOfItem调用")
    }
    
    func numberOfData() -> Int {
        
        print("numberOfData调用")
        
        return 10
    }

}



