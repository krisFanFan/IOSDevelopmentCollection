import UIKit

//类的构造器/构造函数

//默认构造器
class Car1{
    var color = "black"
    var seats = 5
}
let car1 = Car1()

//指定构造器Designated Initializers--可以有好几个
class Car2{
    //存储属性
    var color: String
    var seats: Int
    init(color: String, seats: Int = 5){//seats参数有默认值,调用时可以不传入
        self.color = color
        self.seats = seats
    }
}
let car2 = Car2(color: "black", seats: 5)


//指定构造器覆盖掉默认构造器
class Car3{
    var color = "black"
    var seats = 5

    init(color: String, seats: Int){
        self.color = color
        self.seats = seats
    }
}
let car3 = Car3(color: "red", seats: 2)
car3.color
car3.seats

//便利构造器Convenience Initializers
class Car4{
    var color: String
    var seats: Int
    init(color: String, seats: Int){
        self.color = color
        self.seats = seats
    }
    convenience init(color: String){
        self.init(color: color, seats: 5)
    }
}
let car4 = Car4(color: "blue")
car4.color
car4.seats


