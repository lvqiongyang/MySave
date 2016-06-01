//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//数组
//使用方括号[]来创建，并使用下标来访问元素
//不可变数组
let phones = ["iPhone",1,2.123456]
phones[0]
phones[1]
phones[2]
//1.老式写法
for(var index = 0;index < phones.count ;index++){
    print(phones[index])
}
//2.开区间循环
for i in 0..<phones.count {
    print(phones[i])
}
//3.swift
for i in phones {
    print(i)
}
//可变数组
var users = ["wanglishuai","xiaoSan","lisi",1]
//对指定下标的值进行修改
users[0] = "wanglishuai bu shuai le"

print(users)
//增加 删除 插入
users.append("xiaoluo")
users.insert("Apple", atIndex: 0)
users.append(12)

//创建一个空数组
//不可变
//let emptyArray = [String]()
//let emptyArray1 = []
//emptyArray1 = [1,"123",456]

//创建空数组 使用var
var emptyArray = []
emptyArray = [1,"123",345]
emptyArray = [2]

var emptyA = Array<NSObject>()

emptyA.append(1)
emptyA.append(2)
emptyA.append(3)
emptyA.append(4)
emptyA.append(5)
emptyA.append(6)


//4.swift for
//如果需要每一个元素的整形的索引值，使用enumerate函数代替会更方便
//enumerate函数对于每一个元素都会返回一个包含元素的索引和值的元组
for (index,value) in emptyA.enumerate() {
    print("index : \(index) value : \(value)")
}

for begin in emptyA.enumerate() {
    print("index : \(begin.0),value : \(begin.1)")
}

//字典
//是通过 []进行创建 但是中间必须加一个 "："即 [:]

let userInfo = ["name":"张三疯","age":105,"phoneNumber":"123-4567-8901"]

print(userInfo["age"])
print(userInfo["name"])

var userInfrVar = Dictionary<String,NSObject>()


userInfrVar.updateValue("1", forKey: "key1")
userInfrVar.updateValue("2", forKey: "key2")
userInfrVar.updateValue("3", forKey: "key3")
print(userInfrVar)
userInfrVar.updateValue("4", forKey: "key3")
print(userInfrVar)
userInfrVar.removeValueForKey("key3")
print(userInfrVar)


let color = "black"
//var colorComment : String = ""
var colorComment = ""

switch color {
    case "red":
        colorComment = "This is a red"
    case "yellow":
        colorComment = "This is a yellow"
    case "white","black":
        colorComment = "This is a white or black"
    default:
        colorComment = "I don't know that color"
}

//判断数组 字符串 是否为空 isEmpty
if !emptyA.isEmpty {
    
}

var string = ""

if !string.isEmpty {
    print(string)
}else{
    print("empty")
}



























