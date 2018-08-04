//: Playground - noun: a place where people can play

import UIKit


//func 函数名(参数列表) -> 返回值类型 {语句}

//{
// (参数列表) -> 返回值类型 in
//    
//    语句1
//    ...
//    语句n
//}


let closure1: (Int, String) -> String =

{
    (a:Int, n:String) -> String in
    
    print(a)
    print(n)
    
    return "Hello Closure"
    
}


let array = ["A", "B"]



array.filter({

    (str:String)->Bool in
    
    str.hasPrefix("A")

}).forEach({
    (str:String) ->Void in
    print(str)
}
)


array.forEach({

    (str:String) ->Void in
    print(str)

})





//一般形式
let calAdd:(Int,Int)->(Int) = {
    (a:Int,b:Int) -> Int in
    return a + b
}


//上下文推测

let calAdd2:(Int,Int)->(Int) = {
    (a,b) -> Int in
    return a + b
}


//要么显示指明闭包的参数和返回值类型
let calAdd3:(Int, Int)->Int = {(a,b) in a + b}

//要么指明返回值的类型
let calAdd4 = {(a,b) ->Int in a + b}

//起别名 #define
typealias MyClosure = (Int, String) ->String

let strClosure:MyClosure = {(a:Int, b:String) ->String in return "Hello"}



//当一个闭包作为参数传到一个函数中，需要这个闭包在函数返回之后才被执行，我们就称该闭包从函数种逃逸。一般如果闭包在函数体内涉及到异步操作，但函数却是很快就会执行完毕并返回的，闭包必须要逃逸掉，以便异步操作的回调。
//
//逃逸闭包一般用于异步函数的回调，比如网络请求成功的回调和失败的回调。语法：在函数的闭包行参前加关键字“@escaping”。

// 如非常出名的网络框架 Alamofire
//func response(
//    queue: DispatchQueue?,
//    completionHandler: @escaping (DefaultDataResponse) -> Void)
//    -> Self


//懒加载
class MainViewController:UIViewController{

    lazy var customButton:UIButton = {
    
        var btn = UIButton.init(type: UIButtonType.custom)
        
        return customBtn
    
        
    }()
    
    
    //执行这句话的时候才真正的使用到了customButton，才会去初始化它
    //addSubView(customButton)
    
    
}


