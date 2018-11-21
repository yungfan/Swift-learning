import UIKit


//针对某个需要实现的功能，可以使用协议定义出接口，然后利用协议扩展提供默认的实现。需要这个功能，只需要声明遵守了这个协议即可，遵守某个协议的对象调用协议声明的方法时，如果遵循者本身没有提供实现，协议扩展提供的默认实现会被调用。

//1.定义协议
protocol Eatable{
    
    func eat()
    
}

//2.扩展协议
extension Eatable {
    
    func eat() {
        print("吃饭了")
    }
}

//3.遵循协议
class Person : Eatable {

}

//如果自己想要独特的功能 自己重写协议中的方法即可
class Student : Eatable {
    
    func eat() {
        print("学生吃饭了")
    }
}

var p = Person()
p.eat()

var s = Student()
s.eat()
