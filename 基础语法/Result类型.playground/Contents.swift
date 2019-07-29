import UIKit

//定义Error
enum FileReadError : Error {
    case FileISNull
    case FileNotFound
}

//用Result处理
func readFileContent(filePath : String) -> Result<String, FileReadError> {
    // 1.filePath为""
    if filePath == "" {
        
        return .failure(.FileISNull)
    }
    // 2.filepath有值，但是没有对应的文件
    if filePath != "/User/Desktop/123.plist" {
        
        return .failure(.FileNotFound)
        
    }
    // 3.取出其中的内容
    return .success("123")
}

//let result = readFileContent(filePath: "")  //文件为空

//let result = readFileContent(filePath: "11111")  //文件找不到

let result = readFileContent(filePath: "/User/Desktop/123.plist")  //123

switch result {
    
case .failure(let error):
    
    switch error {
        
    case .FileISNull:
        print("文件为空")
        
    case .FileNotFound:
        print("文件找不到")
    }
    
case .success(let content):
    print(content)
    
}




//1.定义Error
enum NetworkError: Error {
    
    case URLInvalid
}

//定义一个函数，包含一个逃逸闭包进行异步回调
func getInfo(from urlString: String, completionHandler: @escaping (Result<String, NetworkError>) -> Void)  {
    
    if urlString.hasPrefix("https://") {
        
        //经过一系列网络处理以后得到一个服务器返回的数据
        let data = "response result"
        
        //获取数据
        completionHandler(.success(data))
    }
        
    else{
        
        //URL有问题
        completionHandler(.failure(.URLInvalid))
    }
}

//调用函数
getInfo(from: "https://www.baidu.com") { result in
    
    //处理Result
    switch result {
        
    case .success(let content):
        
        print(content)
        
    case .failure:
        //如果参数不是https:// 会打印
        print("url有问题")
    }
}
