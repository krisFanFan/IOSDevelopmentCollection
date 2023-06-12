//
//  TodosTableVC-Storage.swift
//  Todos
//
//  Created by 刘军 on 2021/12/10.
//

import UIKit

let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
let context = appDelegate.persistentContainer.viewContext

extension TodosTableVC{
    //把数据存到本地,在增删改之后均需调用此函数
//    func saveData(){
//        do {
//            //因[Todo]不属于plist类型的对象,故需先编码,让他先变成data类型(UserDefaults支持的plist类型)
//            let data = try JSONEncoder().encode(todos)
//            //UserDefaults.standard为单例
//            //UserDefaults是以key-value(键值对)的形式存储数据的
//            UserDefaults.standard.set(data, forKey: kTodosKey)
//        } catch {
//            print("编码错误:",error)
//        }
//    }
    
}
