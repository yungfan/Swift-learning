//
//  CPP.cpp
//  SwiftCallCPP
//
//  Created by 杨帆 on 2023/8/12.
//

#include "CPP.hpp"

Person createPerson(std::string name, int age) {
    Person person;
    person.name = name;
    person.age = age;
    return person;
}

std::vector<Person> allPerson() {
    std::vector<Person> people;
    Person person1 = createPerson("zhangsan", 20);
    Person person2 = createPerson("lisi", 21);
    Person person3 = createPerson("wangwu", 22);
    people.push_back(person1);
    people.push_back(person2);
    people.push_back(person3);
    return people;
}
