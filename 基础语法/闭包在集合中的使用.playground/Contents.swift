

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


