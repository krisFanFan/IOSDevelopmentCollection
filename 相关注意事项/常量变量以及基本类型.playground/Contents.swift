import UIKit

/**
 * 1.基本类型
 * Int     整数
 * Float   小数3.14
 * Double  小数(精度比Float高.尽量使用Double类型) 3.23333356
 * Bool    布尔
 * String  字符串
 */

//1.也可不声明类型，系统会自动类型推断
var greeting = "Hello"

//2.数字类型的数据可数学运算(+,-,*,/),且左右两边需为同一类型
var index1 = 1
index1 + 1

//3.小数默认为Double类型
var num1 = 0.1

//4.字符串拼接
greeting + "we"
"\(greeting)we"

// 5.let声明的是常量，已经有初始值，不可以修改值(不可调用对象的set方法)
// var声明的是变量，可以修改值(调用对象的set方法)
let name = "23"
//name = "a" 报错

let name1: Int
name1 = 2
