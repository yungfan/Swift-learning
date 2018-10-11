//C
//int sum (int a, int b)
//OC
//- (int) sum:(int)a :(int)b

//Swift
//func 函数名(参数列表) -> 返回值类型 {
//    代码块
//    return 返回值
//}

func sum(a:Int, b:Int) -> Int {
    
    let toal = a + b
    
    return toal
}


//常见的函数类型
//没有参数,没有返回值
func about() -> Void{
    
    print("iPhone Xs Max")
    
}

func about1() -> (){
    
    print("iPhone Xs Max")
}

//最常用
func about2() {
    
    print("iPhone Xs Max")
}

about()
about1()
about2()

//有参数,没有返回值
func callPhone(phoneNumber:String){
    
    print("打电话给\(phoneNumber)")
}

callPhone(phoneNumber: "18888888888")


//没有参数,有返回值
func readMessage() -> String {
    
    return "这是一条来自10086的短信"
}

let message = readMessage()
print(message)


//有参数,有返回值
let total = sum(a: 10, b: 20)
print(total)


//返回值是复杂类型
import Foundation
func triple(info:String) -> (name:String, age:Int){
    
    let infos = info.components(separatedBy: ",")
    
    return (infos[0], Int(infos[1])!)
}

let p = triple(info: "zhangsan,20")
p.name
p.age

//使用注意
//函数的参数虽然没有用var和let修饰,但它是常量,不能在函数内修改
func say(info:String){
    
    
    //info = "2018-9-29"
    
    print("传入的信息为：\(info)")
    
}

say(info: "今天是周六，补课")


//形式参数
func minus(a num1:Int, b num2:Int) -> Int{
    
    return num1 - num2
}

minus(a: 30, b: 20)


func multi(_ num1:Int, _ num2:Int) -> Int{
    
    return num1 * num2
}

multi(30, 20)


//默认参数
func makeCoffee(type:String = "卡布奇诺") -> String {
    
    
    return "您点的了一杯\(type)咖啡"
    
}

makeCoffee(type: "拿铁")
makeCoffee()

//可变参数 你传入的参数个数不确定
func Add(num:Int...) ->Int {
    
    var sum:Int = 0
    
    
    for i in num{
        
        sum = i + sum
        
    }
    
    return sum
}

Add(num:10)
Add(num:10, 20)
Add(num: 10,20,30)




//传值与传引用 inout关键字 在swift3.0之前是放在变量之前 3.0之后放在类型前面
//指针的传递
func swap( a : inout Int,  b : inout Int) {
    let temp = a
    a = b
    b = temp
    
    print("a:\(a), b:\(b)")
}

var num1 = 10
var num2 = 20

swap(a: &num1, b: &num2)
print("num1:\(num1), num2:\(num2)")





//C语言中的函数指针与指针函数
//函数的类型 每个函数都有属于自己的类型，由函数的参数类型和返回类型组成
// 定义两个函数
func addTwoInts(a : Int, b : Int) -> Int {
    return a + b
}

func multiplyTwoInt(a : Int, b : Int) -> Int {
    return a * b
}


//var 变量:(参数)->返回值
var op:(Int, Int) -> Int = addTwoInts

op = multiplyTwoInt;

op(3,4)




//函数作为参数
// 将函数的类型作为函数的参数
func printResult(a : Int, b : Int, calculateMethod : (Int, Int) -> Int) {
    print(calculateMethod(a, b))
}

printResult(a: 10, b: 20, calculateMethod: addTwoInts)
printResult(a: 10, b: 20, calculateMethod: multiplyTwoInt)

//函数作为返回值
func getResult(a:Int) -> (Int, Int)->Int{
    if a > 10 {
        return addTwoInts
    }
    else{
        return multiplyTwoInt
    }
}
//调用返回的函数
getResult(a: 2)(10,20)
getResult(a: 12)(10,20)









