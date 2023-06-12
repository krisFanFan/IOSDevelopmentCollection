//
//  TodosTableVC.swift
//  Todos
//
//  Created by 刘军 on 2021/11/25.
//

import UIKit

//present和dismiss
//push和pop(压栈/入栈和出栈)

class TodosTableVC: UITableViewController {
    
    var todos: [Todo] = [] //定义空数组的另一种写法: var todos1 = [Todo]()

//    延伸知识点:定义空字典的两种写法,常用第二种
//    var todos2 = [String: String]()
//    var todos3: [String: String] = [:]
    
//    测试数据
//    Todo(name: "学习Lebus的《iOS基础版》课程", checked: false),
//    Todo(name: "学习Lebus的《iOS进阶版》课程", checked: true),
//    Todo(name: "学习Lebus的《iOS仿小红书实战项目》课程", checked: false),
//    Todo(name: "学习Lebus的《iOS推送》课程", checked: false),
//    Todo(name: "学习Lebus的《iOS-SwiftUI》课程", checked: false)

    var row = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(todos)
        //isEditing = true //可手动修改isEditing

        //Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //左边的排序按钮-用于对待办事项重新排序
        editButtonItem.title = nil
        editButtonItem.image = pointIcon("arrow.up.arrow.down.circle.fill")
        navigationItem.leftBarButtonItem = editButtonItem
        
        //右边的加号按钮-用于添加待办事项
        navigationItem.rightBarButtonItem?.image = pointIcon("plus.circle.fill")
        
        //沙盒(sandbox)路径
        print(NSHomeDirectory())
        
        //从本地根据相应的key取出数据-UserDefaults用
//        if let data = UserDefaults.standard.data(forKey: kTodosKey){
//            //取出来的是data类型的数据,需先解码为[Todo]类型的数据
//            //仅一个try时可用try?,届时在else里面调试错误
//            if let todos = try? JSONDecoder().decode([Todo].self, from: data){
//                self.todos = todos
//            }else{
//                print("解码失败")
//            }
//        }
        
        let request = Todo.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: kOrderID, ascending: true)] //根据orderID正序取出
        
        if let todos = try? context.fetch(request){
            self.todos = todos
        }else{
            print("从SQLite里面取数据失败")
        }
        
    }
    
    //点下editButtonItem后调用
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        if isEditing{
            editButtonItem.image = nil
            editButtonItem.title = "完成"
        }else{
            editButtonItem.title = nil
            editButtonItem.image = pointIcon("arrow.up.arrow.down.circle.fill")
        }
    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! TodoTableVC
        vc.delegate = self
        
        if segue.identifier == kEditTodoID{
            let cell = sender as! TodoCell //sender就是用户点击的那个cell
            
            //1.cell-->indexPath
            row = tableView.indexPath(for: cell)!.row
            //2.indexPath-->cell(下述)
            //tableView.cellForRow(at: indexPath) as! TodoCell
            
            vc.name = todos[row].name //正向传值
        }
    }
    

}


