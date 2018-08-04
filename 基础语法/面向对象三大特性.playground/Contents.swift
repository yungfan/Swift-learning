//: Playground - noun: a place where people can play

import UIKit

//继承、多态、封装

class Person {
    
    var name:String?
    var age:Int?
    
    //private 如果想让子类看不到自己的方法 可以用private修饰
    fileprivate func say()  {
        print("人说话")
        
    }
    
    func eat()  {
        
        self.say()
        
        print("人吃饭")
    }
    
    //final让子类无法重写自己的方法
    final func sleep()  {
        
        print("人睡觉")

    }


}

class Student : Person{
    
    var stuno:String?
    
    func study(){
    
        print("学生学习")
    
    }
    
    override func eat()  {
        
        super.eat()
        
        self.study()
        
        print("学生吃饭")
    }
    
}

var stu = Student()

stu.eat()






//多态产生的条件 1、必须有继承关系 2、必须有方法的重写

class Bird {
    
    func song() {
        
        print("鸟唱歌")
    }

}

class Chicken :Bird {
    
    override func song() {
        
        print("鸡唱歌")
    }

    
}

class Duck:Bird{
    
    override func song() {
        
        print("鸭唱歌")
    }

}


//bird指向的对象是Bird
var bird:Bird = Bird()
bird.song()


//bird指向的对象是Chicken
bird = Chicken()
bird.song()

//bird指向的对象是Duck
bird = Duck()
bird.song()


//访问修饰符 在 Swift 语言中，访问修饰符有五种，分别为 fileprivate，private，internal，public 和 open。

//private 访问级别所修饰的属性或者方法只能在当前类里访问。

//fileprivate 访问级别所修饰的属性或者方法在当前的 Swift 源文件里可以访问。（比如上面样例把 private 改成 fileprivate 就不会报错了）

//internal（默认访问级别，internal修饰符可写可不写）访问级别所修饰的属性或方法在源代码所在的整个模块都可以访问

//public 可以被任何人访问。但其他 module 中不可以被 override 和继承，而在 module 内可以被 override 和继承。

//open  可以被任何人使用，包括 override 和继承。
