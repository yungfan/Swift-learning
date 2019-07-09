import UIKit

//类必须继承NSObject
class Student :NSObject {
    //那些属性可以通过KeyPath需要在前面加 @objc
    @objc var name: String
    @objc var  age: Int
    @objc var born_in: String
    @objc var sex: String
    
    init(name:String, age:Int, born_in:String, sex:String) {
        
        self.name = name
        self.age = age
        self.born_in = born_in
        self.sex = sex
        
    }
}


let stu =  Student(name: "zhangsan", age: 12, born_in: "2009-10-12", sex: "男")
//正常获取值
stu.age
//Swift 3 之前
stu.value(forKey: "name")
//Swift 3
stu.value(forKey:#keyPath(Student.born_in))
//Swift 4
stu[keyPath:\Student.sex]

//设置值
stu.age = 20
//Swift 3 之前
stu.setValue("lisi", forKey: "name")
//Swift 3
stu.setValue("2019-10-12", forKey:#keyPath(Student.born_in))
//Swift 4
stu[keyPath:\Student.sex] = "女"

print(stu.age)
print(stu.name)
print(stu.born_in)
print(stu.sex)

