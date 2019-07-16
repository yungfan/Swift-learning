import UIKit

let number = 4
// 检查一个整数是否为另一个整数的倍数
if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}


//随机数生成
let ranInt = Int.random(in: 0..<5)
let ranFloat = Float.random(in: 0..<5)
let ranDouble = Double.random(in: 0..<5)
let ranBOOL = Bool.random()

var names = ["ZhangSan", "LiSi", "WangWu"]
// 对数组元素进行重新随机排序，重新返回一个数组
let shuffled = names.shuffled()


var array:[String] = ["Animal", "Baby", "Apple", "Google", "Aunt"]
//随机取得数组中的一个元素
let element = array.randomElement()
print(element!)


var isSwift = true
//toggle函数没有返回值
isSwift.toggle()
print(isSwift)
