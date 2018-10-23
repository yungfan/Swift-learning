import UIKit

//定义结构体
struct Person {
    
    var name = "Zhangsan"
    var age = 10
    var sex = "man"
    
    func say() {
        
        print("人会说话")
    }
    
}

//构造函数
//默认构造函数()
var p1 = Person()
p1.name
p1.age
p1.sex
p1.say()

//成员构造函数
var p2 = Person(name: "Lisi", age: 20, sex: "woman")

p2.name
p2.age = 30
p2.age
p2.sex
p2.say()


//值类型
var p3 = p2

//对p3进行修改 并不会影响p2的值
p3.age = 40
p3.name = "Wangwu"

p2.name
p2.age

p3.name
p3.age


//CGRect：矩形 iOS开发中用于描述控件的位置
//CGSize：宽高 iOS开发中用于描述控件的大小
//CGPoint：点(x,y) iOS开发中用于描述控件的起始位置（坐标）
