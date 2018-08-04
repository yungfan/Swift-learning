//: Playground - noun: a place where people can play

import UIKit

class Student{
    
    //存储属性:存储实例的常量和变量
    var stuname:String = "zhangsan"
    let stuclass:String = "移动互联151"
    
    var iOSScore : Double = 0.0
    var UIScore : Double = 0.0
    
    
    
    
    //计算属性:通过某种方式计算出来的属性  @property
    var totalScore :Double {
        
        set(score){
            
            //set方法应该传一个值进来 默认情况下 看不到默认值的变量 newValue
            
            print("调用了set方法")
            
            //self.totalScore =  newValue
            
            iOSScore = score
            
        }
        
        get{
            
            print("调用了get方法")
            
            return (iOSScore + UIScore) / 2;
        }
        
        
    }
    
    
    //类属性:与整个类自身相关的属性
    static var stuAge:Int = 20
    
    
    
    //属性观察器，通常是监听存储属性和类属性的改变
    var stuno:String? {
        
        //在属性值被存储之前设置。此时新属性值作为一个常量参数被传入。该参数名默认为newValue
        willSet {
            
            print("调用了willSet方法")
            print(newValue!)
            
        }
        
        //在新属性值被存储后立即调用。与willSet相同，此时传入的是属性的旧值，默认参数名为oldValue
        didSet{
            
            print("调用了didSet方法")
            
            
            //使用if let 警告
            if oldValue != nil{
                
                print(oldValue!)
                
                
            }
            
        }
        
    }
    
    
    //懒加载属性 lazy
    lazy var stugrade : [String] = {
        
        print("懒加载")
        
        return ["A", "B"]
        
    }()
    
    
    
    
}


var stu = Student()
stu.totalScore = 60.0
stu.UIScore = 70.0


var total = stu.totalScore

print(total)

print(stu.iOSScore)

print(Student.stuAge)



stu.stuno = "111222333"
stu.stuno = "333222111"

print(stu.stugrade)



