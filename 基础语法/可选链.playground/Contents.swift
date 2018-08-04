//: Playground - noun: a place where people can play

import UIKit


//这是Toy类
class Toy{

    var price:Double = 100.0

}
/*这是Dog类*/
class Dog{

    var color:UIColor = UIColor.red
    var toy :Toy?

    ///文档注释
    func run()  {
        
        print("runing")
    }

}

// MARK:- 这是Person类
class Person {

    var name:String = "zhangsan"
    
    var dog:Dog?
    
}


var toy = Toy()
var dog = Dog()
var person = Person()

person.dog = dog
dog.toy = toy


let price = person.dog?.toy?.price
print(price!)


