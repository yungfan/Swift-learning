//: Playground - noun: a place where people can play

import UIKit


//Boss
protocol buyTicket{

    func buy()
}

class Boss {
    var delegte:buyTicket?


}

class Emp: buyTicket {
    
    func buy() {
        print("买了一张票")
    }


}


var boss:Boss = Boss()

var emp:Emp = Emp()

boss.delegte = emp

boss.delegte!.buy()

