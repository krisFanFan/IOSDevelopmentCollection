import UIKit

// 循环/遍历
let nums = [1,2,3,4,5]

var sum = 0
for num in nums {
    sum += num
}
print(sum) //求出数组内数字总和

// 单纯的想执行代码多少次可用闭区间
// where是当xxx的意思; %运算符:取余数(取余/取模)
for i in 1...5 where i % 2 == 0{
    print("我是天才\(i)")
}



