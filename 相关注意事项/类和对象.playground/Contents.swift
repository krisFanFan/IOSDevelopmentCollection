import UIKit

var greeting = "Hello, playground"

//定义class 首字母大写，大驼峰
class Person{
    var name = 34
    var freeway: String
//    初始化函数/初始化构造器：用来初始化对象里面没有被初始化过的属性
    init(freeway: String) {
        self.freeway = freeway
    }
    func walk(){
        print("的")
    }
}
//实例化
let person = Person(freeway:"23")
person.freeway
