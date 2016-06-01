//: Playground - noun: a place where people can play

/*
Swift,苹果公司在2014年WWDC(苹果开发者大会)发布新的开发语言，它可以和Objective-C 共同运行在Mac OS 和 iOS平台，用于来搭建基于苹果平台的应用程序。
    Swift语法内容融合了OC、JavaScript、Python，语法简单，使用方便，可以和OC混编
 */
//导入一个模块
import UIKit
//在控制台里面输出
print("Hello Word!!!")

//var 全称 variable的一个简称，代表变量的意思
//以下代码也即是说 一个变量名为apple 代表是一个变量
var apple = "iPhone"
apple = "不是吃的也不是啃得"

print("This is a " + apple+" " + apple)

apple = "This is a " + apple+" " + apple

print(apple)

var intValue1 = 0
var intValue:Int
var stringValue:String


intValue = 100
print(intValue)
stringValue = "1233455"
print(stringValue)

// "\(intValue)"  String(intValue) 没什么区别 都是把一个字符串转换成一个字符串

stringValue = stringValue + "\(intValue)" + String(intValue)


let firstName = "Jarry"
let lastName = "Tom"

let totalName = firstName + lastName

let totalName1 = totalName + String(12345679)

let button = UIButton.init(type: .Custom)
button.frame = CGRectMake(100, 100, 200, 200)









