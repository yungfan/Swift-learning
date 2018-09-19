import UIKit

//C语言中条件必须用() 后面如果只有一条执行语句，可以省略{}
//if(a == 10)
//print("aaaaa")

//Swift条件的()可以省略 但是执行语句的{}不能省略
var a = 90

if a < 60 {
    
    print("不及格")
    
} else if a < 70{
    
    print("及格")
    
} else if a < 80{
    
    print("中等")
    
} else if a < 90{
    
    print("良好")
    
} else {
    
    print("优秀")
}

//
var b:Int?

//强制(显示)解包 !
//if b != nil{
//
//    print(b!)
//
//}

b = 10

//隐式解包
//当b为nil时，条件语句为false；当b有值的时候，解包里面的具体的值然后赋值给c
if let c = b {
    
    print("if let \(c)")
}


func guardlet() -> Void {
    
    //当b为nil时，条件语句为假，执行括号里面的语句；当b有值的时候，解包里面的具体的值然后赋值给c，执行else{}之后的语句
    guard let c = b else {
        
        print("b = nil")
        
        return
        
    }
    
    print("guard let \(c)")
}


guardlet()



//guard语句
//条件不成立的时候执行else{} 否则执行 {}之后的语句
func online(age : Int) -> Void {
    
    guard age >= 18 else {
        
        print("小孩")
        
        return
    }
    
    print("成年人")
}

online(age: 17)

//if(a > 10){
//
//    if(b > 10){
//
//        if(c > 10) {
//
//
//        }
//
//    }
//
//}
//
//guard a>10, b>10, c>10 else {
//
//    return
//}

var c = 90

//switch
//1.省略break
//2.多行语句 - {}省略
//3.case可以用区间预算符
switch c {
case 0..<60 :
     print("over")
     print("不及格")
case 60..<70:
     print("及格")
case 70..<80:
     print("中等")
case 80..<90:
    print("良好")
default:
     print("优秀")
    
}



