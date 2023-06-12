import UIKit

//计算一个人的BMI
func calcBMI(weight: Double, height: Double) -> String{
    let bmi = round(weight / pow(height, 2))

    var message = ""

    if bmi > 25{
        message = "你太胖了"
    }else if bmi > 18.5{
        message = "你的身体很健康"
    }else{
        message = "你太瘦了"
    }

    return "你的BMI是:\(bmi),\(message)"

}

calcBMI(weight: 69.5, height: 1.8)


//外部参数,内部参数
//函数可重名的情况:1.参数数量或类型不同;2.参数名不同(包括外部参数和内部参数)
func calcBMI(use weight: Double, _ height: Double) -> String{
    let bmi = round(weight / pow(height, 2))
    
    var message = ""
    
    if bmi > 25{
        message = "你太胖了"
    }else if bmi > 18.5{
        message = "你的身体很健康"
    }else{
        message = "你太瘦了"
    }
    
    return "你的BMI是:\(bmi),\(message)"
    
}

calcBMI(use: 69.5, 1.8)


