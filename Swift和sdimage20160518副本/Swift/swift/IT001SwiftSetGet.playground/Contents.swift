//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class People {
    
    var _name : String?
    var _age : Int?

    init(){
        print("init")
    }
    
    var people : String {
        set(newName) {
            self._name = newName
        }
        get {
            return self._name!
        }
    }
    
    //swift 中的set get 方法 不等同于OC 中的setter 和 getter
    //在 swift中 get set 被称之为“计算属性”，它是用来间接获取/改变其他属性的值
    var fullInfo : String {
        get {
            return self._name! + " " + String(self._age!)
        }
    }
    //带属性监视的普通属性
    var pAge : Int = 0 {
        
        willSet {
            print("will set a new value \(newValue) to age")
        }
        
        didSet {
            print("age sucess changed form \(oldValue) to \(pAge)")
            if pAge > 10 {
                _name = "xiaoSan"
            }else{
                _name = "xiaoSi"
            }
            
        }
    }
    
    
    
}

var p = People()

p.people = "12345"

p.pAge = 9

let str1 = p.people
print(str1)














