import UIKit

//扩展计算属性
extension Double{
    
    var km : Double {return self * 1_000.0}
    
    var m : Double { return self }
    
    var cm : Double { return self / 100.0}
    
    var mm : Double { return self / 1000.0}
    
    var ft : Double { return self / 3.28084}
    
}

25.0.km
25.0.m
25.0.cm
25.0.mm
3.0.ft

//使现有的类型遵循某协议
class ViewController : UIViewController{
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
}



//扩展构造函数
extension CGRect{
    
    init(center: CGPoint, size: CGSize) {
        
        let originX = center.x - size.width * 0.5
        
        let originY = center.y - size.height * 0.5
        
        self.init(x: originX, y: originY, width: size.width, height: size.height)
        
    }
    
}


let centerRect = CGRect(center: CGPoint(x: 100.0, y: 100.0), size: CGSize(width: 100.0, height: 100.0))

//扩展方法
extension Int {
    
    func repetition(task: ()->Void) {
        
        for _ in 0..<self {
            
            task()
            
        }
    }
    
    mutating func square(){
        
        self = self * self
        
    }
}


10.repetition {
    
    print("Hello World")
    
}
//必须用变量，因为它的值要被修改
var a = 10
a.square()




//@objc protocol SportProtocol {
//    // 该方法可选
//    @objc optional func playBasketball()
//    func playFootball()
//}
//
//class Person : SportProtocol {
//    var name : String?
//    var age : Int = 0
//    // 实现协议中的方法，此时可以不实现协议中的可选方法，当然也可以实现
//    func playFootball() {
//
//    }
//
//}

//协议的扩展
protocol SportProtocol {
    // 该方法可选
    func playBasketball()
    func playFootball()
}

extension SportProtocol {
    
    //将协议中不需要遵循的类一定要实现的方法在这边实现
    func playBasketball(){
        
    }
}

//扩展协议中已经实现的方法这边就变成可选方法
class Person : SportProtocol{
    
    func playFootball() {
        
    }
 
}
