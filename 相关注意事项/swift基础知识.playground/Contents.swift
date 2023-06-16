import UIKit
//import Foundation
//引入UIKit，既可以使用ui方面的控件，也可以使用swift基本功能
//只想使用swift基本功能，可以引入 Foundation

//1.print 自带换行符
print("2") // 2\n

//2.debugPrint可查看是什么类型
debugPrint("2")
debugPrint("2\n")

//3.函数传参
func getMilk(nums: Int){
    debugPrint(nums)
}
getMilk(nums: 55)

//4.函数返回值
func getMilk1(nums: Int) -> String{
    if nums >= 80{
        return "大于80"
    }else if nums >= 40{
        return "小于40"
    }else{
        return "小"
    }
}
getMilk1(nums: 80)

//5.四舍五入函数 返回值double类型
debugPrint(round(3.445215))

//6.外部参数use，内部参数nums 外部参数也可以定义为_
// 函数可重名情况：1.参数数量或类型不同；2.参数名不同(包括外部参数和内部参数)
func getMilk2(use nums: Int, _ height: Int) -> String{
    if nums >= 80{
        return "大于80"
    }else if nums >= 40{
        return "大于40\(height)"
    }else{
        return "小"
    }
}
getMilk2(use: 59,30)

//7.循环
let numArr = [1,23,4,5,67,6]
for num in numArr{
    print(num)
}
//偶数才打印 1...5 闭区间1到5   1..<5 开区间1到4
for i in 1...5 where i % 2 == 0{
    print(i)
}
