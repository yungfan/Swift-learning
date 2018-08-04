//: Playground - noun: a place where people can play

import UIKit


// 1.定义异常
enum FileReadError : Error {
    case FileISNull
    case FileNotFound
}

func readFileContent(filePath : String)  throws -> String {
    // 1.filePath为""
    if filePath == "" {
        
        throw FileReadError.FileISNull
        
    }
    
    // 2.filepath有值,但是没有对应的文件
    if filePath != "/User/Desktop/123.plist" {
        
        throw FileReadError.FileNotFound
        
    }
    
    // 3.取出其中的内容
    return "123"
}


//do{
//    //如果try的过程中产生的异常
//    try 调用方法
//    
//    ...
//}
//catch{
//    
//    //一旦try出现了异常 直接跳转到catch里面来执行，默认有一个参数error来接收
//    print(error)
//
//}
//defer {
//    //无论try是否出现异常 defer里面的代码都会执行
//}




do{
    
    try readFileContent(filePath: "123")

}
    
catch{

    //catch里面会自动捕获到错误的类型 默认有一个参数error来接收
    print(error)

}

defer {
    print("无论如何 我都会执行")
}
