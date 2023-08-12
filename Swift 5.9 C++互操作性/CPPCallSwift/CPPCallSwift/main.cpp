//
//  main.cpp
//  CPPCallSwift
//
//  Created by 杨帆 on 2023/8/12.
//

#include <iostream>
#include <CPPCallSwift-Swift.h>
#include <string>
using namespace CPPCallSwift;

int main(int argc, const char * argv[]) {
    // 直接访问Swift代码
    Person person = Person::init("zhangsan", 20);
    std::string name = person.getName();
    long age = person.getAge();
    std::cout << "Name: " << name << ", Age: " << age << std::endl;
    person.setName("lisi");
    person.setAge(21);
    name = person.getName();
    age = person.getAge();
    std::cout << "Name: " << name << ", Age: " << age << std::endl;
    person.study();
    swiftFunc();
    return 0;
}
