

import UIKit

var array:[String] = ["Animal", "Baby", "Apple", "Google", "Aunt"];

//比较老的遍历数组的方式
//for var i in array {
//
//    print(i)
//
//}



//stride(从何处开始遍历,遍历到第几个元素结束（从1开始）,阶)
for index in stride(from: 0, to: 6, by: 2) {
    
    
    //防止数组越界
    print(array[index])
    
}



print("---------")
//forEach遍历
array.forEach({a in
    
    print(a)
    
});


print("---------")

//filter返回的依旧是数组 这种语法叫链式语法 Masonry
//filter 可以取出数组中符合条件的元素 重新组成一个新的数组
array.filter({
    
    //筛选里面的闭包必须是返回Bool类型的闭包
    $0.hasPrefix("A")
    
}).forEach({
    
    a in print(a)
    
})


print("---------")

//map函数能够被数组调用，它接受一个闭包作为参数，作用于数组中的每个元素。闭包返回一个变换后的元素，接着将所有这些变换后的元素组成一个新的数组
array.map({ (a) -> String in
    
    "Hello " + a
    
}).forEach({
    
    a in print(a)
    
})


print("---------")

//FlatMap
//将一个二位数组输出为一位数组
let array2 = [[1,2,3], [4,5,6], [7,8,9]]
// 如果用map来获取新的数组
let arrayMap = array2.map { $0 }
print(arrayMap)
// 用flatMap
let arrayFlatMap = array2.flatMap { $0 }
// [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(arrayFlatMap)


print("---------")
//map,flatMap和filter方法都是通过一个已存在的数组，生成一个新的、经过修改的数组。然而有时候我们需要把所有元素的值合并成一个新的值 那么就用到了Reduce（合规）

var add:[Int] = [11, 22, 33, 44];
//reduce 函数第一个参数是返回值的初始化值
var total = add.reduce(0, {
    
    $0+$1
    
})

print(total)

print("---------")

var totalStr = array.reduce("", {
    
    $0+" "+$1
    
})

print(totalStr)


