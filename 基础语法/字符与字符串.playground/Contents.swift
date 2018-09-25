//字符
var char:Character = "A"
print(char)

//字符串
var str:String = "Hello World"
print(str)

var str2:String = String("ABC")
print(str2)

var shi:String = """
静夜思
唐代:李白
床前明月光，疑是地上霜。
举头望明月，低头思故乡。
"""
print(shi)

//字符串的用法
//1.插值
var age =  10
print("小明今年\(age)岁")


//2.遍历字符串
for character in str {
    print(character)
}

//3.长度
print(shi.count)

//4.拼接
var strO = "ABC"
var strT = "School"

print(strO + strT)

//5.子串

//"Hello World"
//截取某字符串的前5个字符串
let sub1 = str.prefix(5)
//截取某字符串的后5个字符串
let str1 = str.suffix(5)


//也可以换种写法
let index2 = str.index(str.endIndex, offsetBy: -5)
let sub2 = str[index2..<str.endIndex]
//截取某字符串的第3个字符到第6个字符范围的字符串
let index3 = str.index(str.startIndex, offsetBy: 3)
let sub3 = str[str.startIndex..<index3]

let index4: String.Index = str.index(str.endIndex, offsetBy: -3)

//从某个位置开始 到某个位置结束
let sub4 = str[index3..<index4]



//静夜思
//唐代:李白
//床前明月光，疑是地上霜。
//举头望明月，低头思故乡。
var liIndex = shi.index(of:"李")
var baiIndex = shi.index(liIndex!, offsetBy: 2)
let libai = shi[liIndex!...baiIndex]

//6.分割
var city = "合肥,芜湖;安庆,池州"
city.split(separator: ";")



