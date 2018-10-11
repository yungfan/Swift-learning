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
















