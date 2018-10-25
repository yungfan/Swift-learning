

class Student {
    
    //存储属性
    var age :Int = 0
    var chineseScore :Double = 0.0
    var englishScore :Double = 0.0
    
    //属性观察器
    var name:String?{
        
        //newValue
        willSet{
            
            print("willSet")
            if let newValue = newValue {
                print(newValue)
            }
        }
        
        //oldValue
        didSet{
            
            print("didSet")
            if let oldValue = oldValue {
                print(oldValue)
            }
        }
        
    }
    
  
    
    //计算属性
    var averageScore :Double {
        
        //访问（获取）
        get{
            
            print("get")
            
            return (chineseScore + englishScore) / 2
        }
        
        //设置值的时候
        set{
            
            print("set")
            
            //千万不要在这里设置值 会死循环
            //self.averageScore = newValue
        }
        
    }
    
    //只读计算属性
    var averageScore2 :Double {
        
            return (chineseScore + englishScore) / 2
    }
    
    //类属性
    static var mathScore :Double = 99.5
    
    
    //懒加载属性
    lazy var teacher :[String] = {
        
        
        ()->[String] in
        
        print("懒加载属性")
        return ["Mr Zhang", "Mr Li", "Mr Yang"]
    }()

}

var stu = Student()
//存储属性
stu.age = 10
stu.age
stu.chineseScore = 90.9
stu.englishScore = 80.9

//计算属性
stu.averageScore
stu.averageScore = 90.0
//类属性的访问
Student.mathScore

//懒加载属性
stu.teacher
stu.teacher
stu.teacher
stu.teacher
stu.teacher

//属性观察器
stu.name = "Zhangsan"
stu.name = "Lisi"
