//C-style for statement has been removed in Swift 3
//for(int i = 0; i< 10; i++){
//
//
//}


//i表示的是当前元素的索引
for i in 0..<10 {
    print(i)
}

//当索引用不上的时候 可以用_
for _ in 0...9 {
    
    print("Hello World")
    
}

for i in ["Hello","Hi","Welcome"] {
    
    print(i)
}

var a = 10

while a == 10 {
    
    print("a == 10")
    
    a = a + 1
    
}


while true {
    
    a = a + 1
    
    print("break")
    
    if a == 15 {
        
        break;
    }
}


var b = 20

repeat {
    
    print("b = \(b)")
    
    b = b + 1
    
} while b == 20






