//: Playground - noun: a place where people can play

import UIKit


class Student {
    
    var name:String = "zhangsan"
    
    var stuno:String = "141055555"
    
    var age:Int = 15

    
    func eat(food:String) {
        
        print("吃饱饭" + food)
        
    }
    
    //static 修饰的就是类方法
    static func exam(sc:String) -> Float{
        
        print("参加考试" + sc)
        
        return 89.0
        
    }
    
    
    //构造函数都是init 只不过参数不同，参数就是当前类中成员变量的随机组合
    
    //构造函数的重载:名字一样但参数个数或者类型不一样
    
    //默认情况下 所有的类都有一个不带参数的构造函数
//    init(){
//    
//    }
    
    init(age:Int) {
        
        print("***我被调用")
        
        self.age = age
    }
    
    init(name:String) {
        print("+++我被调用")
        
        self.name = name
    }
    
    init(name:String, stuno:String) {
        
        print("===我被调用")

        
        self.name = name
        self.stuno = stuno
    }
    
    
    //便利构造函数 convenience init
    //必须在函数里面调用其他的构造函数
    convenience init(name:String, stuno:String, age:Int) {
        
        print("---我被调用")

        //调用上面的构造函数 将参数传过去
        self.init(name: name, stuno: stuno)
        self.age = age
    
    }
    
    //析构函数
    deinit {
        
        //释放监听器、释放Timer、清除内存等等
        
        print("该类被释放")
    }

    
}

var stu:Student? = Student(name: "lisi", stuno: "12345678", age: 10)

print(stu!.name)
print(stu!.stuno)
print(stu!.age)

stu!.eat(food: "米饭")

Student.exam(sc: "Swift")

// alloc <==> dealloc

// init <==> deinit

// 可选型才可以赋值为nil
stu = nil

