//
//  Constants.swift
//  Todos
//
//  Created by 刘军 on 2021/11/25.
//

import UIKit

//storyboardID
let kTodoTableVCID = "TodoTableVCID"

//cellID
let kTodoCellID = "TodoCellID"

//segueID
let kAddTodoID = "AddTodoID"
let kEditTodoID = "EditTodoID"

//userdefaults的key
let kTodosKey = "TodosKey"

let kOrderID = "orderID"

//全局函数
func pointIcon(_ iconName: String, _ pointSize: CGFloat = 22) -> UIImage?{
    let config = UIImage.SymbolConfiguration(pointSize: pointSize)
    return UIImage(systemName: iconName, withConfiguration: config)
}
