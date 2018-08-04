//: Playground - noun: a place where people can play

import UIKit

// {
//    (形参) -> 返回值类型 in
//     执行代码
// }


// func 方法名 (形参) -> 返回值类型{}



var closure:(Int, Int)->(Int) = {
    
    (a:Int, b:Int) -> Int in
    
      return a + b
}

closure(3,4)


var closure2 = {
    
    print("Hello word")

}

closure2()


//尾随闭包：闭包是函数的最后一个参数
func add (b:(Int, Int)->(Int)){
    
    print("add")

}

//不要放在()里面，拿到()之后来
add(){
    
    (a:Int, b:Int) -> Int in
    
    return a + b
}




