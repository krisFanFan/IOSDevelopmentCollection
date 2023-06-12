import UIKit

//可选类型Optional
//他包含两种值: 1.nil, 2.某个其他类型的值(如Int,String,Array,Object,Enumeration等)

//1.定义-任何类型都可以声明为可选类型(Int,String,Array,Object,Enumeration等等,包括我们之后要学到的函数类型)
var name1: Optional<String> = Optional("Lebus")
//简写(具体类型后面加问号)--常用
var name: String? = "Lebus"


//2.读取可选类型的值
print(name)
//强制解包forced unwrapping--若为nil则程序报错闪退
print(name!)
//所以需先判断再强制解包
if name != nil{
    print(name!)
}

//可选绑定Optional Binding--iflet
if let name = name{
    print(name)
}

//可选绑定Optional Binding--guard
//guard let name = name else { return }



//3.隐式可选类型+自动解包
//一般在class里面申明可选属性时用,表明在使用到他的时候一定有值(准确的说是在第一次使用到的时候),和显式可选不同的是:不需要再强制解包或可选绑定





