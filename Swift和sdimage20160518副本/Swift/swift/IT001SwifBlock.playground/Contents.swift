//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//无参无返回值
typealias funcBlock = ()->()
typealias funcBlcokS = ()->Void



class BlockDemo {

    var block : funcBlock?
    
    var blockFunc : ()->() = {
//        param in
        print("没有参数 没有返回值")
    }
    
    var blockFuncVal : (Int,Int)->Int = {a,b in return a+b
    }
    
    func callBack() {
        print("call Back")
//        self.blockFunc()
        self.block!()
    }

}

let people = BlockDemo()



let ret = people.blockFuncVal(1,1)
print(ret)

people.block = {
    print("123456788")
}
people.callBack()







