import UIKit

let originStr = "Hello Swift Data"
//String转Data
let data:Data = originStr.data(using: .utf8)!
//Data转String
let str = String(data: data, encoding: .utf8)
print(str)

