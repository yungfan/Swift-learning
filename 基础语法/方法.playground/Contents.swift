import UIKit

class Student {
    //存储属性
    var str = "Hello, playground"
    //实例方法
    func say(info:String) {
        print(info)
    }
    //实例方法
    func eat(food:String){
        
        //self关键字访问属性
        self.str = "Hello World"
        print(self.str)
        //self关键字调用方法
        self.say(info: food)
        
        print("吃\(food)")
    }
    
    //类型方法
    //可以用static或class修饰
    static func play(){
        print("play")
    }
    class func study(){
        print("study")
    }
    
}

var stu = Student()
stu.eat(food: "红烧肉")



struct Student2 {

    var str = "Hello, playground"
    func say(info:String) {
        print(info)
    }
    //结构体方法中修改属性 必须在前面加上 mutating
    mutating func eat(food:String){
        //self关键字访问属性
        self.str = "Hello World"
        //self关键字调用方法
        self.say(info: food)
        print("吃\(food)")
    }
    
    //结构体中只能用staitc
    static func play(){
        print("play")
    }
}


