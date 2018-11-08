import UIKit



//定义类
class Person {
    
    //定义类中的属性不报错
    //1.属性是可选型
    //2.定义的时候就初始化
    //3.构造函数
    var name:String
    var age:Int
    var sex:String
    
    //默认构造函数
    //构造函数没有func修饰
    //构造函数默认完成调用 不能手动调用
    init() {

        print("被调用")
        name = "Zhangsan"
        age = 10
        sex = "male"
    }
    
    //自定义构造函数
    init(name:String, age:Int, sex:String) {
        
        self.name = name
        self.age = age
        self.sex = sex
        
    }
}
var p = Person()
p.age
p.name
p.sex

var p2 = Person(name: "Wangli", age: 11, sex: "female")
p2.age
p2.name
p2.sex




//结构体类型的成员构造函数
struct Size {
    
    var width = 0.0, height = 0.0
    
    init() {
        
        //构造函数委托
        self.init(width: 2.0, height: 2.0)
    }

    init(width:Double, height:Double) {
        self.width = width
        self.height = height
    }
}
//要么不要写任何构造函数，要么全写所有的构造函数
var size = Size()
size.width
size.height
var size2 = Size(width: 1.2, height: 1.2)
size2.width
size2.height


//类的继承和初始化 - 指定构造函数(Designated Initializer)和便捷构造函数(Convenience Initializer)
class Car{
    
    var speed:Double
    
    //Designated Initializer
    init(speed:Double) {
        self.speed = speed
    }
    
    //便捷一定调用指定
    convenience init(){
        self.init(speed: 60.0)
    }
    
}

class Bus : Car {
    
    var wheels : Int
    
    init(wheels: Int) {
        
        self.wheels = wheels
    
        //由于子类继承了父类中的存储属性 所以必须借助父类的指定构造函数来初始化继承的那个存储属性的值
        //一定要在子类的属性初始化完毕以后调用
        super.init(speed: 120.0)
    }
    
    //便捷一定调用指定
    convenience init(){
        
        self.init(wheels: 6)
    }
    
}

var auto = Bus(wheels: 2)


class Person2 {
    var name: String!
    var weight: Double
    // 普通自定义构造函数
    init(name: String) {
        self.name = name
        self.weight = 0.0
    }
    // 定义指定构造函数
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    
    // 定义便利构造函数使用convenience修饰)
    convenience init(n name: String, w weight: Double) {
        // 便利构造函数必须调用同类中的指定构造函数
        self.init(name: name, weight: weight)
    }
    
    convenience init(showStr: String) {
        self.init(name: "", weight: 0.0)
        print(showStr)
    }
}

class Man: Person2 {
    var sex: String = "男"
    override init(name: String) {
        super.init(name: name)
        self.name = name
        self.weight = 0.0
    }
    override init(name: String, weight: Double) {
        
        // self.sex = "女"
        // 子类的指定构造函数中必须调用父类的构造函数
        // 重写的时候，必须将调用父类的构造函数语句放在调用父类属性的前面
        super.init(name: name, weight: weight)
        self.name = name
        self.weight = weight
        
        
        self.sex = "女"
    }
    // 定义构造函数与父类的便利构造函数一样, 这里不算重写
    convenience init(showStr: String) {
        self.init(name: "", weight: 0.0)
        print(showStr)
    }
}

var manA = Man(name: "ZhangSan", weight: 62.0)
var manB = Man(showStr: "Hello Swift")

//可失败的构造函数
struct Animal{
    
    var species:String
    
    init?(species:String) {
        
        if species.isEmpty {
            
            //如果返回nil 必须是可失败的构造函数
            return nil
        }
        
        self.species = species
    }
    
}

//cat是一个可选型
var cat = Animal(species: "CAT")
if let cat = cat {
    cat.species
}

var dog = Animal(species: "")

if let dog = dog {
    dog.species
}


//必要构造函数
class SomeClass{
    
    required init() {
        
    }
    
    deinit {
        
    }
}

class SomeSubClass : SomeClass{
    
    //子类重写时必须也是required 省去override
    required init() {
        
    }
    
    deinit {
        
    }
}


//析构函数
class Person3 {
    var name : String
    var age : Int
    
    init(name : String, age : Int) {
        
        print("Person-init")
        self.name = name
        self.age = age
    }
    
    deinit {
        print("Person-deinit")
    }
}

var person:Person3? = Person3(name: "Zhangsan", age: 20)
person = nil
