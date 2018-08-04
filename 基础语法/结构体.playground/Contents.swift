//: Playground - noun: a place where people can play

import UIKit

struct Student {

    var name:String = "zhangsan"
    
    var stuno:String = "141055555"
    
    var age:Int = 15
    
    func eat(food:String) {
        
        print("吃饱饭" + food)
        
    }


    func exam(sc:String) -> Float{
        
        print("参加考试" + sc)
    
        return 89.0
    
    }

}

//如果在结构体构造的时候没有给变量赋值，在构造该结构体变量时需要传入
var stu = Student()

print(stu.name)
stu.exam(sc: "iOS")




struct Teacher {
    
    var name:String
    
    var age:Int
    
    func eat(food:String) {
        
        print("吃饱饭" + food)
        
    }
    
    
    
    

    
    //结构体中默认又一个不带任何参数的构造函数 名为init(){}
    init(name:String, age:Int) {
        
        self.name = name
        self.age = age
        
    }
    
}

//希望你在构造时初始化结构体里面的所有的成员变量
var tea = Teacher(name:"lisi", age:35)

print(tea.age)
print(tea.name)



extension Teacher {

    func work(task:String) -> String {
        
        print(task)
        
        return "每天都要上课";
    }

    //为了能够在实例方法中修改属性值，可以在方法定义前添加关键字mutating
    mutating func setAge()  {
        
        self.age  = 20
        
    }

}

var teacher = Teacher(name:"wangwu", age:30)
print(teacher.work(task: "改作业"))





