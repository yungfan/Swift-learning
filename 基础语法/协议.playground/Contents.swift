import UIKit

// 1.定义协议
protocol Pet{
    
    var name:String {get set}
    var age:Int {get}
    
    func feed(food:String)
    mutating func shout(sound:String)
}

// 2.遵守协议
// 注意:默认情况下在Swift中所有的协议方法都是必须实现的,如果不实现,则编译器会报错
class Cat : Pet{
    //属性可以设置默认值
    //可读可写用var
    var name: String = "Dingding"
    //只读可以用let
    let age: Int = 10
    func feed(food: String) {
        print("feed\(food)")
    }
    //方法参数可以有默认值
    //类实现mutating方法要修改属性值时必须加不用加mutating
    func shout(sound: String = "miaomiao") {
        self.name = "Caicai"
        print("shout\(sound)")
    }
}

struct Dog : Pet{
    var name: String
    var age: Int
    func feed(food: String) {
        print("feed\(food)")
    }
    //结构体实现mutating方法要修改属性值时必须加mutating
    mutating func shout(sound: String) {
        self.name = "Guaiguai"
        print("shout\(sound)")
    }
}

//定义第一个协议
protocol CrazySportProtocol {
    func jumping()
}

//定义第二个协议 继承第一个协议
protocol SportProtocol : CrazySportProtocol {
    func playBasketball()
    func playFootball()
}


class Sporter : CrazySportProtocol {
    func jumping() {
        
    }
}

class Person : SportProtocol{
    func playBasketball() {
        
    }
    
    func playFootball() {
        
    }
    
    func jumping() {
        
    }
}

//协议中方法的可选,协议中的方法我有些不想继承的实现 只有部分方法需要实现
@objc protocol SportProtocol2 {
    //该方法可选
    @objc optional func playBasketball()
    func playFootball()
}


class Student : SportProtocol2 {
    //此时可以不实现协议中的可选方法，当然也可以实现
    func playFootball() {
        
    }

}


//协议的运用-代理

//1.定义一个协议，规定需要完成的任务
protocol BuyTicketProtocol {
    func buyTicket()
}

//2.让具体的类或者结构体实现协议，将任务具体化
class Assist : BuyTicketProtocol{
    func buyTicket() {
        print("秘书去买票")
    }
}


class HN : BuyTicketProtocol{
    func buyTicket() {
        print("黄牛去买票")
    }

}
//3.委托方申明一个属性（遵循协议），然后在真正需要完成任务的时候调用属性来完成
class Boss {
    
    var delegate:BuyTicketProtocol
    
    init(delegate:BuyTicketProtocol) {
        
        self.delegate = delegate
    }
    
    func gotoBJ(){
        
        self.delegate.buyTicket()
        
    }

}

var boss = Boss(delegate: Assist())
boss.gotoBJ()

