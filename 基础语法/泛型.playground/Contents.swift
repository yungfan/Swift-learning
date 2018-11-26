import UIKit

//案例引发的思考
func swapInt(a: inout Int, b: inout Int){
    
    let temp = a
    a = b
    b = temp
}

var a = 10
var b = 20
swapInt(a: &a, b: &b)
print("a = \(a), b = \(b)")

func swapDouble(a: inout Double, b: inout Double){
    
    let temp = a
    a = b
    b = temp
}
var aa = 10.10
var bb = 20.20
swapDouble(a: &aa, b: &bb)
print("aa = \(aa), bb = \(bb)")



//泛型
func swapValues<T>(value1:inout T, value2:inout T){
    
    let temp = value1
    value1 = value2
    value2 = temp
}

var oneInt = 10
var twoInt = 20
swapValues(value1: &oneInt, value2: &twoInt)
print("oneInt = \(oneInt), twoInt = \(twoInt)")


var oneDouble = 10.1
var twoDouble = 20.2
swapValues(value1: &oneDouble, value2: &twoDouble)
print("oneDouble = \(oneDouble), twoDouble = \(twoDouble)")

var oneString = "hello"
var twoString = "world"
swapValues(value1: &oneString, value2: &twoString)
print("oneString = \(oneString), twoString = \(twoString)")


//类型关联
protocol SomeProtocol {
    
    associatedtype T:UIView
    
    func method1(argv : T)
    func method2(argv : T)
    
}


struct A : SomeProtocol{
   
    func method1(argv: UIButton) {
        
    }
    
    
    func method2(argv: UIButton) {
        
    }
}


class B : SomeProtocol {
    
    func method1(argv: UIImageView) {
        
    }
    
    func method2(argv: UIImageView) {
        
    }
  
}
