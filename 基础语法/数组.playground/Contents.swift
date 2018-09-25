//: Playground - noun: a place where people can play

var str = "Hello, playground"

//1.定义方式1
var array1: [String] = [String]()

array1.first

var array2: [String] = Array<String>()

//2.定义方式2
var array3:Array<String>  = [String]()

var array4:Array<String>  = Array<String>()


//let 与 var
let array5:[Int] = [1,2,3,4,5,6];



//操作
print(array5.count)

print(array1.isEmpty)

array3.append("A")
array3.append("B")
array3.append("C")

array3.insert("D", at: 2)

array3.removeLast()

array3.first

array3[0] = "AA"

array3.reverse()

print(array3)

//遍历
for i in 0..<array5.count {
    print(array5[i])
}

for item in array5 {
    print(item)
}

for item in array5[2...4] {
    print(item)
}

for (index, item) in array5.enumerated() {
    print("\(index) ---- \(item)")
}

//合并
var array6:[String] = ["1","2","3"];
var array7:[String] = ["A","B","C"];
var array8:[String] = ["4","5","6"];

let array9 = array6 + array7 + array8
print(array9)

//不建议这么做
var array10:[Any] = [2, 3.0, "zhangsan"]
var array11:[Any] = ["lisi", true]

let array12 = array10 + array11
print(array12)

