import UIKit


func getInfo(from urlString: String, completionHandler: @escaping (Result<String, Never>) -> Void)  {
    
    let data = "response result"
    completionHandler(.success(data))
    
}

//调用函数
getInfo(from: "https://www.baidu.com") { result in
    
    switch result {
        case .success(let string):
            print(string)
    }
    
   
}
