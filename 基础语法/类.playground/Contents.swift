import UIKit

//定义类
class Person {
    
    var name = "Zhangsan"
    var age = 10
    var sex = "man"
    
    func say() {
        
        print("人会说话")
    }
    
}

//构造函数
//默认构造函数
var p1 = Person()
p1.name
p1.age = 30
p1.age
p1.sex
p1.say()


//引用类型
//修改p2
var p2 = p1
p2.name = "Lisi"
p2.age = 40
p2.sex = "woman"
//对p1有影响
p1.name
p1.age
p1.sex

//特征运算符
let p3 = Person()
p1 === p2
p1 === p3
p1 !== p3



//继承
// 定义一个父类
class Vehicle {
    var currentSpeed = 0.0
    func makeNoise() {
        print("Ba Ba")
    }
    //不能被子类重写
    final func run() {
        print("Run Run")
    }
}

// 定义一个子类
class Bicycle: Vehicle {
    var hasBasket = false
    
    override func makeNoise() {
        print("Ling Ling")
    }
    
}


var bicycle = Bicycle()

bicycle.makeNoise()

// 定义一个子类
class Car: Vehicle {
    var banner = "皖B12345"
    
    override func makeNoise() {
        print("Di Di")
    }
}

var car = Car()
car.makeNoise()


//类型转换
var vehicle = Vehicle()
vehicle = bicycle as Vehicle
vehicle.makeNoise()
