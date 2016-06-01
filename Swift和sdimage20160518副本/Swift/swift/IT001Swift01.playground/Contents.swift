//: Playground - noun: a place where people can play
//swift,是苹果2014年在WWDC(苹果开发者大会)发布的新开发语言，可与 OC 共同运行在Mac OS和iOS平台上，Swift语言中的语法混合了 OC，JS，Python 使用简单
import UIKit
import Foundation

var str = "Hello, playground"
print(str)
//2.1 中没有println 2.0中有
//var 是 variable (可变的)的一个缩写，代表变量的意思
//var 变量名= XXXXX
//就是说代表创建一个变量
//当重新指向新值的时候会将之前的值给覆盖
str = "hello world!!!!!"
print(str)

var peopleName = "zhangSan"

print("People Name is " + peopleName)

var str1 = peopleName + " " + str

print(str1)

//声明之后的变量在赋值的时候就规定好了该变量是啥类型
var intValue = 100
var floatValue = 200

print(intValue)
print("This is value : \(intValue)")
print("This is value : \(intValue + floatValue)")


//let
//也是声明一个变量，声明一个不可以更改的常量
let value1 = "hello"
let str11 = peopleName + " " + str

//问题1：以下输出是多少
var value2 = "Apple"
print(value2)

//问题2：int 和 double 有什么直接的区别
let age = 34
let pi = 3.1415926
//int 和 double 是2个不同的类型 
//int 可与容纳整数 double 可与容纳小数
//记住 swift 会自动根据 值在编译时自动知道是哪一种类型

//问题3：let和var 有什么区别
//见图

let intVal : Int
intVal = 2

var string1 : String = ""
print(string1)

//var tableView : UITableView = UITableView(frame: <#T##CGRect#>)










