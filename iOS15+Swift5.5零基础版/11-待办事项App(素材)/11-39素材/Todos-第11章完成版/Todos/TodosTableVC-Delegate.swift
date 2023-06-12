//
//  TodosTableVC-Delegate.swift
//  Todos
//
//  Created by 刘军 on 2021/12/1.
//

import UIKit

//UITableViewDelegate
extension TodosTableVC{
    //当用户点击cell的时候调用
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //取消选择cell以让底色迅速消失
        
//        找到storyboard上的vc
//        let vc = storyboard?.instantiateViewController(withIdentifier: kTodoTableVCID) as! TodoTableVC
//        用代码进行push跳转
//        navigationController?.pushViewController(vc, animated: true)
    }
    
    //自定义左滑删除按钮的文本
//    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
//        return "点击以删除"
//    }
    
    //编辑状态下cell左边的按钮-设置为none;因仍旧需要左滑删除功能,故在非编辑状态下仍需返回.delete
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        isEditing ? .none : .delete
    }
    //取消编辑状态下cell的缩进
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool { false }
}


//TodoTableVCDelegate
//反向传值
extension TodosTableVC: TodoTableVCDelegate{
    //增删改查-增
    func didAdd(name: String) {
        //添加数据
        todos.append(Todo(name: name, checked: false))
        //根据最新数据更新视图
        tableView.insertRows(at: [IndexPath(row: todos.count - 1, section: 0)], with: .automatic)
    }
    
    //增删改查-改
    func didEdit(name: String) {
        //改数据
        todos[row].name = name
        
        //根据最新数据更新视图
        
        //1.通过indexPath找cell，继而找到里面的todoLabel，然后改text
//        let indexPath = IndexPath(row: row, section: 0)
//        let cell = tableView.cellForRow(at: indexPath) as! TodoCell
//        cell.todoLabel.text = todos[row].name
        
        //2.刷新整个tableView(不用过度担心耗资源问题)
        tableView.reloadData()
        
    }
}
