import UIKit

//枚举型Enumeration

//1.定义
enum CarType1{
    case sedan
    case SUV
    case sports
}


//2.成员值--常用
let carType1 = CarType1.sports
let carType2: CarType1 = .SUV //已指定类型了,则可推断,直接用点语法

//显式的取出枚举型数据的成员值
let alert1 = UIAlertController(title: "xx", message: "xxx", preferredStyle: UIAlertController.Style.alert)
//隐式的取出枚举型数据的成员值
let alert2 = UIAlertController(title: "xx", message: "xxx", preferredStyle: .alert)



//3.原始值

//原始值可以是字符串,整数型,浮点型(小数)
enum CarType2: String{
    case sedan = "sedan"
    case SUV = "SUV"
    case sports = "sports"
}
//用原始值实例化
CarType2(rawValue: "SUV")
//获取原始值
CarType2.SUV.rawValue

//原始值是整型时,指定第一个,系统可以推断后面的(依次递增1)
enum CarType3: Int{
    case sedan = 0
    case SUV
    case sports
}
print(CarType3.SUV.rawValue)



//4.简写
//成员值简写--常用
enum CarType4{
    case sedan, SUV, sports
}
CarType4.sports

//带整型原始值的简写
enum CarType5: Int{
    case sedan = 0, SUV, sports
}

//带整型原始值时,第一个值没有被赋原始值时,自动被系统赋值为0--常用
enum CarType6: Int{
    case sedan, SUV, sports
}
CarType6.sedan.rawValue
