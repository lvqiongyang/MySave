//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//创建一个类
class People{
    //? 隐式解析 ？的意思就是 可能有也可能没有
    //! 必须先解析,必须有值
    var _name : String? = ""
    var _age : Int = 0
    
    //类的初始化方法，当初始化时会调用，没有参数
    init(){
        print("init")
    }
    init(name:String){
        print(name)
    }
    
    
    
    
    //func
    //无参无返回
    func eat() {
        print("People eat : \(_name) \(_age)");
        print("People eat:" + _name! + "\(_age)" + String(_age))
        
        self.ageAdd(10000)
        
    }
    
    //有参有返回值
    func ageAdd(newAge:Int)->Int{
        return _age+newAge
    }
    
    func retBool(val:Bool)->Bool {
        
        if val {
            return true
        }

        return false
    }
    
//    func metohFunc(fun : retBool) {
//        
//    }
    
    //类方法 +
    
    static func printLog() {
        print("我是+号!!!!");
    }
}

class Man: People {
    
    override init() {
        super.init()
        print("man init")
    }
    
    override func eat() {
        print("man eate")
    }
    
    
}

//var people : People = People(name: "wanglishuai")
//
//people._name = "12345678"
//people._age = 200
//people.eat()
//let ret = people.ageAdd(1000)
//
//let bool = people.retBool(true)
//
//People.printLog()

var m : Man = Man()
m.eat()










