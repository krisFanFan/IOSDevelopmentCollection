import UIKit
//1.函数的参数(parameter/argument)

//没有参数的函数,数据写死(hard code),功能性不强
//func getMilk(){
//    print("去商店")
//    print("买一箱牛奶")
//    print("给10块钱")
//    print("回家")
//}
//
//getMilk()

//有参数的函数,动态,功能性更强.
//定义函数的时候同时定义参数,此时参数被称作形式参数/形参
//func getMilk(nums: Int){
//    print("去商店")
//    print("买\(nums)箱牛奶")
//    let price = 10 * nums
//    print("给\(price)块钱")
//    print("回家")
//}

//调用函数的时候同时传入参数(传参),此时参数被称作实际参数/实参
//getMilk(nums: 1)
//getMilk(nums: 4)


//2.函数的返回值
//当调用函数后需要得到一些数据时使用
func getMilk(nums: Int, total: Int) -> Int{
    print("去商店")
    print("买\(nums)箱牛奶")
    let price = 10 * nums
    print("给\(price)块钱")
    print("回家")
    let res = total - price
    return res
}

//不同作用域(scope)可同名
let res = getMilk(nums: 1, total: 100)
print("还剩\(res)块钱")



















