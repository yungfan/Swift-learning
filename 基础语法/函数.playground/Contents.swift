//: Playground - noun: a place where people can play

import UIKit


//int add(int a, int b){ return a + b;}
//-(int)add:(int)a :(int)b

//func 函数名(参数1, 参数2, ...) -> 返回值类型{ return 返回值类型的参数}

//无参数无返回值的函数
func divide(){
    
    print("除法")
    
}

//有参数没有返回值的函数
func add(a:Int, b:Int){
    
    print("加法")
    
}



//无参数有返回值的函数
func multi() -> String{
    
    
    return "乘法"
}


//有参数有返回值的函数
func minus(a:Int, b:Int) -> Int{
    
    return a - b
}



divide()

let a = multi()

print(a)

add(a: 30, b: 40)

let b = minus(a: 70, b: 20)

print(b)



//内参与外参

func ride(a:Int, b:Int, c:Int) -> Int{
    
    return a + b + c
    
}


//默认情况下,参数名称既是内部参数也是外部参数
ride(a: 3, b: 4, c: 5)


func ride(num1 a:Int, num2 b:Int, num3 c:Int, num4 d:Int) -> Int{
    
    return a + b + c + d
    
}


//如果想要有外部参数,可以在变量名前加标签来设置
ride(num1: 1, num2: 2, num3: 3, num4: 4)


//如果不想要外部参数,可以在参数名称前加_
func ride(_ a:Int, _ b:Int) -> Int{
    
    return a+b
    
}

ride(3, 4)



//默认参数
func makeCoffee(str:String = "拿铁") ->String{
    
    return "你做了一杯\(str)咖啡"
    
}


//var coffee = makeCoffee()
var coffee = makeCoffee(str: "星巴克")


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
















