import UIKit


//1.协议的方法可选
@objc protocol OptionalProtocol {
   @objc optional func optionalMethold1()
   @objc optional func optionalMethold2()
}

//2.iOS 开发


//3.weak修饰协议
//protocol MyDelegate : NSObjectProtocol{
//
//    func method()
//}

@objc protocol MyDelegate{

    func method()
}

class MyClass{
    
   weak var delegate : MyDelegate?
}

