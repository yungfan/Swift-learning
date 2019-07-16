

import UIKit

var array:[String] = ["Animal", "Baby", "Apple", "Google", "Aunt"];


//1.sort排序
//这种默认是升序
array.sorted()
//如果要降序
array.sort { (str1, str2) -> Bool in
    return str1 > str2
}


//2.forEach遍历
array.forEach({str in
    
    print(str)
    
});


//3. filter——可以取出数组中符合条件的元素 重新组成一个新的数组
array.filter { (str) -> Bool in
    
     //筛选里面的闭包必须是返回Bool类型的闭包
     str.hasPrefix("A")
    
    }.forEach({
        
        a in print(a)
        
})


//4. map——闭包返回一个变换后的元素，接着将所有这些变换后的元素组成一个新的数组
array.map({ (str) -> String in
    
    "Hello " + str
    
}).forEach({
    
    str in print(str)
    
})

//5. reduce：map和filter方法都是通过一个已存在的数组，生成一个新的、经过修改的数组。然而有时候我们需要把所有元素的值合并成一个新的值 那么就用到了reduce（合规）

var sum:[Int] = [11, 22, 33, 44];
//reduce 函数第一个参数是返回值的初始化值
//result是中间结果 num是遍历集合每次传进来的值
var total = sum.reduce(0) { (result, num) -> Int in
    return result + num
}

print(total)


//6. first(where:) last(where:) removeAll(where:)
let element = array.first(where: {$0.hasPrefix("A")})
print(element!)
let element2 = array.last(where: {$0.hasPrefix("A")})
print(element2!)
array.removeAll(where: { $0.hasPrefix("A") })
print(array)

//7. allSatisfy — 条件符合（Swift 4.2）

//判断数组的所有元素是否全部大于85
let scores = [86, 88, 95, 92]
//检查序列中的所有元素是否满足条件，返回BOOL
let passed = scores.allSatisfy({ $0 > 85 })
print(passed)


//8. compactMap — 转换（Swift 4）

let arr:[Int] = [1, 2, 34, 5, 6, 7, 8, 12, 45, 6, 9]
//返回操作的新数组（并不是筛选）,数组、字典都可以使用
//它的作用是将 map 结果中那些 nil 的元素去除掉，这个操作通常会 “压缩” 结果，让其中的元素数减少，这也正是其名字中 compact 的来源
let compact = arr.compactMap({$0%2 == 0})
print(compact)


//9. mapValues — 转换value （Swift 4）

let dic:[String : Int] = [
    "first": 1,
    "second": 2,
    "three": 3,
    "four": 4
]
//字典中的函数, 对字典的value值执行操作, 返回改变value后的新的字典
let mapValues = dic.mapValues({ $0 + 2 })
print(mapValues)

// 10. compactMapValues — 上面两个的合并（Swift 5）
//将上述两个方法的功能合并在一起，返回一个对value操作后的新字典， 并且自动过滤不符合条件的键值对
let newDic = dic.compactMapValues({String($0)})
print(newDic)
