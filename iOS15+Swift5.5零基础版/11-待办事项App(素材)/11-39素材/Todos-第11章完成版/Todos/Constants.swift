//
//  Constants.swift
//  Todos
//
//  Created by 刘军 on 2021/11/25.
//

import UIKit

let kTodoTableVCID = "TodoTableVCID"

let kTodoCellID = "TodoCellID"
let kAddTodoID = "AddTodoID"
let kEditTodoID = "EditTodoID"

func pointIcon(_ iconName: String, _ pointSize: CGFloat = 22) -> UIImage?{
    let config = UIImage.SymbolConfiguration(pointSize: pointSize)
    return UIImage(systemName: iconName, withConfiguration: config)
}
