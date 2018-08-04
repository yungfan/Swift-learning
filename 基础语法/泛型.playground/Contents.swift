//: Playground - noun: a place where people can play

import UIKit


//针对集合类型，可以在定义类型时指明泛型来限定值的类型
var array:Array<String> = ["Q", "W", "E"]

var value = array[0]


func add(num1:Int, num2:Int) -> Int{

    return num1 + num2
}


func minus<T>(num1:T, num2:T){
    
    print(num1)
    print(num2)

}



add(num1:1,num2:2)
//add(num1:20.2, num2: 20.02)

minus(num1: 20, num2: 20)
minus(num1: 20.20, num2: 20.02)
minus(num1: "A", num2: "B")


print("-----------------------------")

func swapTwoValue<T>(a: inout T, b: inout T){
    let tempValue = a
    a = b
    b = tempValue
}


var oneInt = 22;
var twoInt = 33;

swapTwoValue(a:&oneInt, b: &twoInt)
print("oneInt:\(oneInt),twoInt:\(twoInt)")

var oneStr = "hello"
var twoStr = "world"

swapTwoValue(a:&oneStr, b: &twoStr)
print("oneStr:\(oneStr),twoStr:\(twoStr)")

var oneDouble = 10.01
var twoDouble = 20.02
swapTwoValue(a:&oneDouble, b: &twoDouble)
print("oneDouble:\(oneDouble),twoDouble:\(twoDouble)")
