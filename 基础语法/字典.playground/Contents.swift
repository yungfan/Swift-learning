//: Playground - noun: a place where people can play

//{@"id": @"123456", @"name": @"zhangsan"} []

// 定义与初始化
var dic1: [String : String] = ["id":"123456", "name":"zhangsan"]

var dic11: Dictionary<String, String> = ["id":"123456", "name":"zhangsan"]

//如果是Any 必须显示声明字典的类型
let dic2: [String : Any] = ["age":13, "sex":"male"]

let dic22 = Dictionary<String, String>()

//基本使用

dic1.count
dic22.count


dic1.isEmpty
dic22.isEmpty

//添加与修改语法看上去一样
//如果key不存在 就添加 存在就修改
//通过key间接操作value
dic1["class"] = "移动应用开发171"
dic1["name"] = "lisi"
print(dic1)

dic1.updateValue("wangwu", forKey: "name")
print(dic1)

dic11.removeValue(forKey: "id")
print(dic11)

dic1["name"]



var dic : [String : Any] = ["id":"123456789", "name":"zhangsan", "age": 15, "school":"第一中学"]


for key in dic.keys {
    print(key)
}

for value in dic.values {
    print(value)
}

print("==================")

for (key, value) in dic {
    
    print("\(key) -- \(value)")
}

print("==================")

for (index, value) in dic.enumerated() {
    
    
      print("\(index) -- \(value)")
}


var dic3: [String : String] = ["id":"123456", "name":"zhangsan"]
var dic4: [String : String] = ["age":"13", "sex":"male", "name":"lisi"]

for (key, value) in dic4 {
    
    dic3[key] = value
    
}

print(dic3)



















