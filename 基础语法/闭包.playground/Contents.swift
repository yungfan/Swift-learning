//引入
func square(number:Int) ->Int {
    
    return number * number
}

square(number: 10)

let squareClosure = {
    (number: Int) -> Int in
    
    return number * number
    
}

squareClosure(10)


//简单闭包
let demo = { print("Hello 闭包") }

demo()


let divide =   {
        (num1:Int, num2:Int) -> Int in
        
        return num1/num2
}

divide(100,10)

//闭包表达式定义
//{ (parameters) -> (return type) in
//    statements
//}


//参数名称缩写
func getScore(score:[Int], con:(Int)->Bool) -> [Int] {
    
    //定义一个新的数组
    var newScore:[Int] = [Int]()
    
    for item in score {
        
        if con(item) {
            
            newScore.append(item)
        }
        
    }
    
    return newScore
}

//print(getScore(score: [65,75, 85, 95], con: {(s :Int)->Bool in return s>80 }))
//print(getScore(score: [65,75, 85, 95], con: {(s :Int) in return s>80 }))
//print(getScore(score: [65,75, 85, 95], con: {s in return s>80 }))
//print(getScore(score: [65,75, 85, 95], con: { $0>80 }))

//引申
let arr = [65,75, 85, 95]

print(arr.filter({$0>80}))

arr.forEach { (s) in
    print(s)
}


//捕获值
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let a = makeIncrementor(forIncrement: 10)

a()
a()
a()


//尾随闭包
func doSomething(info:String, closure:(String)->Void){
    
    closure(info)
    
    print("**********")
    
}

//普通调用方式
doSomething(info: "Hello World", closure: { s in print(s)})
//尾随闭包调用方式
doSomething(info: "Hello Swift") { (s) in
    print(s)
}

//系统自带API的尾随闭包
print(arr.sorted(){ $0 > $1})

//逃逸闭包:闭包可以超出函数的范围来调用

//存放没有参数、没有返回值的闭包
var closureArray :[()->Void] = [()->Void]()

//定义一个函数，接收一个非逃逸闭包为参数
func nonEscapeClosure(closure:()->Void){
    
    closure()
}


//定义一个函数，接收一个逃逸闭包为参数，将闭包并存储到一个数组里面去，并没有调用
func escapeClosure(closure: @escaping ()->Void){
    print("函数开始")
    closureArray.append(closure)
    print("函数结束")
}

var x = 10
//打印10
print(x)

nonEscapeClosure {
    x = 100
}
//打印100 因为闭包在函数里面执行了
print(x)

escapeClosure {
    x = 200
}
//打印100 因为闭包逃逸了 没有在函数里面执行
print(x)

closureArray.first?()
//打印200 在函数外面调用了闭包
print(x)

//尾随闭包常用于异步回调


//自动闭包
func printIfTrue(predicate:@autoclosure ()->Bool){
    
    if predicate() {
        
        print("is true")
        
    }
    
    else{
        
        print("is false")
        
    }
    
}

//直接进行调用了，Swift 将会把 2 > 1 这个表达式自动转换为 () -> Bool。这样我们就得到了一个写法简单、表意清楚的表达式。
printIfTrue(predicate: 2>1)
printIfTrue(predicate: 2<1)
