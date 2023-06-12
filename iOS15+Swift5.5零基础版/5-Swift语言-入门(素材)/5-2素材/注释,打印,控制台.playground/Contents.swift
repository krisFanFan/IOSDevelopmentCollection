import UIKit

//双斜杠注释
//注释或取消的快捷键:单行的话,鼠标放此行任意处,command+/;多行的话,选中所有,command+/
//适用于备注和调试
var greeting = "123"

//两个杠星注释
//适用于复杂函数功能块的多行备注
/*
 aaa
 bbb
 ccc
 */
func updateDiceImages(){
    
}


//Swift提供的打印函数,用于项目中的变量调试
//print函数:自带一个换行符,遇字符串不会打印出双引号
print("hello")
print(greeting)
//debugPrint函数:原封不动的打印,会打印出双引号和换行符
debugPrint("123")
