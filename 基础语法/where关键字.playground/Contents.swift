import UIKit

//1.switch case
let names = ["张三", "李四", "王五", "王小二"]

for name in names {
    
    switch name {
    case let x where x.starts(with: "王"):
        print(x)
    default:
        print("这个人不姓王")
    }
    
}

names.filter { (name) -> Bool in
    name.starts(with: "王")
}


//2.for
let nums = [0,1,2,3,4,5,6,7,8,9]

for num in nums where num % 2 == 0{
    
    print(num)
}

nums.filter { (num) -> Bool in
    
    num % 2 == 0
}


//3.协议
protocol Study{
    
}

extension Study where Self : UIView{
    
    func swift()  {
        print("study swift")
    }
    
}

//struct Student:Study {
//
//
//}
//Student().swift()

extension UIButton : Study{
    
}

UIButton().swift()


//4.泛型
func sum<T>(num:T) where T : Study{
    
    print(num)
}

struct number : Study{}

sum(num: number())
//sum(num: 20.0)


//5.异常处理
enum HTTPError:Error{
    
    case HTTPCode(Int)
    
}

func throwsError() throws {
    
    throw HTTPError.HTTPCode(404)
}

do {
    try throwsError()
    
} catch HTTPError.HTTPCode(let code) where code == 404 {
    print("资源找不到了")
}
