import UIKit

struct Person {
    let name: String
    let age: Int
    
    //方法不会被反射
    func eat() {
        print("chifan")
    }
}

let xiaoMing = Person(name: "XiaoMing", age: 16)

//通过Mirror来进行反射
let r = Mirror(reflecting: xiaoMing)

//查看类型
r.displayStyle!

//属性的个数
r.children.count

//查看属性和属性的值
for child  in r.children {
    print(child.label!)
    print(child.value)
}

//使用 dump 方法来通过获取一个对象的镜像并进行标准输出的方式将其输出出来
dump(xiaoMing)
