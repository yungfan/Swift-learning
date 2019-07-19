import UIKit

//函数、闭包单表达式函数的隐式返回
func add(a:Int, b:Int) -> Int {
    a+b
}
add(a: 10, b: 20)
struct Rectangle {
    var width = 0.0, height = 0.0
    var area: Double { width * height }
}


//根据默认值合成结构体的构造函数
struct Person {
  var age = 0
  var name = "zhangsan"
}

let zhangsan = Person()
let lisi = Person(age: 20, name: "lisi")
let wangwu = Person(name: "wangwu")

//不透明的返回类型
func generateIntNumber() -> some Equatable {
    return 5
}

let number1 = generateIntNumber()
let number2 = generateIntNumber()

if number1 == number2 {
    print("numbers equal")
}

//属性包装类型
@propertyWrapper
struct Trimmed {
    private var value: String = ""

    // 计算属性
    var wrappedValue: String {
        get { value }
        set { value = newValue.trimmingCharacters(in: .whitespacesAndNewlines) }
    }

    init(initialValue: String) {
        self.wrappedValue = initialValue
    }
}


struct Post {
    //用上面定义的Trimmed修饰同类型的变量
    @Trimmed var title: String
    @Trimmed var body: String
}


//任何字符串无论是在初始化期间还是通过后面的属性访问都会自动删除前后面的空格。
var post = Post(title: "  Swift Property Wrappers  ", body: " is very important ")
post.title // "Swift Property Wrappers"
post.body  //  "is very important"

post.title = "      @propertyWrapper     "
post.title // "@propertyWrapper"
