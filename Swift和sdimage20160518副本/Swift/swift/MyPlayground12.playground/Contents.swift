//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
import Foundation


class People : NSObject
{
    //普通属性
    var firstName:String = ""
    var lastName:String  = ""
    var nickName:String  = ""
    
    //计算属性
    var fullName:String
        {
        get
        {
            return nickName + " " + firstName + " " + lastName
        }
    }
    
    //带属性监视器的普通属性
    var age:Int = 0
        {
        //我们需要在age属性变化前做点什么
        willSet
        {
            println("Will set an new value \(newValue) to age")
        }
        //我们需要在age属性发生变化后，更新一下nickName这个属性
        didSet
        {
            println("age filed changed form \(oldValue) to \(age)")
            if age<10
            {
                nickName = "Little"
            }else
            {
                nickName = "Big"
            }
        }
    }
    
    func toString() -> String
    {
        return "Full Name: \(fullName) " + ", Age: \(age) "
    }
    
}

var me = People()
me.firstName = "Zhang"
me.lastName  = "San"
me.age = 20

println(me.toString())