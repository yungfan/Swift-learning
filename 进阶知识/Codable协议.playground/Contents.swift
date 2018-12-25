import UIKit

let res = """
{
"name": "Jone",
"age": 17,
"born_in" : "China",
"xingbie": "male"
}
"""

struct Student: Codable {
    let name: String
    let age: Int
    let bornIn :String
    let sex: String
    
    //所有属性写全 会同时影响编码与解码
    enum CodingKeys :String, CodingKey {
        case name
        case age
        case bornIn = "born_in"
        case sex = "xingbie"
    }
}


//JSON -> 结构体/类 解码 decode
let decoder = JSONDecoder()

//如果用了CodingKeys，那么就不要用这个
//驼峰命名转换
//decoder.keyDecodingStrategy = .convertFromSnakeCase

do {
    
    let stu:Student =  try decoder.decode(Student.self, from: res.data(using: .utf8)!)
    
    print("name = \(stu.name) , age = \(stu.age) , boreIn = \(stu.bornIn) , sex = \(stu.sex)")
    
} catch  {
    
    print(error)
}


print("---------------------------")

//结构体/类 -> JSON 编码 encode

let student = Student(name: "zhangsan", age: 20, bornIn: "AnHui", sex:"female")

let encoder = JSONEncoder()

//驼峰命名转换
//encoder.keyEncodingStrategy = .convertToSnakeCase

encoder.outputFormatting = .prettyPrinted

do {
    
    let data = try encoder.encode(student)
    
    print(String(data: data, encoding: .utf8)!)
    
    
} catch  {
    
    print(error)
}

