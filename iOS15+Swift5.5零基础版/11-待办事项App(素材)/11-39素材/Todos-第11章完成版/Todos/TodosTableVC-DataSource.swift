//
//  TodosTableVC-DataSource.swift
//  Todos
//
//  Created by 刘军 on 2021/12/1.
//

import UIKit

//UITableViewDataSource
extension TodosTableVC{

    //配置section的数量(不实现的话就相当于返回1)
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    //配置row的数量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { todos.count }
    //配置每个row里面显示什么内容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: kTodoCellID, for: indexPath) as! TodoCell
        
        //增删改查-查
        let checkBoxBtn = cell.checkBoxBtn!
        let todoLabel = cell.todoLabel!
        let initSelected = todos[indexPath.row].checked
//        系统自带布局(虽然storyboard里面没有相应的UI控件,但仍旧可以这样使用)
//        var contentConfiguration = cell.defaultContentConfiguration()
//        contentConfiguration.text = "昵称"
//        contentConfiguration.secondaryText = "个性签名"
//        contentConfiguration.image = UIImage(systemName: "star")
//        cell.contentConfiguration = contentConfiguration
        
        //配置初始数据
        checkBoxBtn.isSelected = initSelected
        todoLabel.text = todos[indexPath.row].name
        todoLabel.textColor = initSelected ? .tertiaryLabel : .label //三元运算符.等同于下面
//        if todos[indexPath.row].checked{
//            cell.todoLabel.textColor = .tertiaryLabel
//        }else{
//            cell.todoLabel.textColor = .label
//        }
        
        
        //增删改查-改
        //设置每个checkBoxBtn的tag值为当前的row,用于传值
        checkBoxBtn.tag = indexPath.row
        //添加点击事件,用户点击checkBoxBtn后会触发self下面的toggleCheck函数,并且系统会自动把本身(toggleCheck)作为参数传过去
        checkBoxBtn.addTarget(self, action: #selector(toggleCheck), for: .touchUpInside)
        
        return cell
    }

    
    //增删改查-删
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //左滑删除
        if editingStyle == .delete {
            //删数据
            todos.remove(at: indexPath.row)
            //根据最新数据更新视图
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    //增删改查-改(移动/重新排序)
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//        Swift里数组元素的移动(重新排序)
//        var arr = [1,2,3,4]
//        arr.remove(at: 0) //arr --> [2,3,4]
//        arr.insert(1, at: 3) //arr --> [2,3,4,1]
//        print(arr)
        
        //改数据
        let todoToRemove = todos[fromIndexPath.row] //一定要在删除数组某个元素前取出,不然后面取会取不到
        todos.remove(at: fromIndexPath.row)
        todos.insert(todoToRemove, at: to.row)
        //print(todos)
        
        //系统自动更新视图(纯粹更新,不会调用DataSource)
        //但我们仍需刷新DataSource函数,因为要刷新indexPath,从而让用户点击CheckBox时数据能够准确
        tableView.reloadData()
    }
}

//监听函数
extension TodosTableVC{
    //用户点击checkBoxBtn触发
    @objc func toggleCheck(checkBoxBtn: UIButton){
        let row = checkBoxBtn.tag
        //修改数据
        todos[row].checked.toggle()
        //print("点击了第\(row + 1)行,todos变成了:",todos)
        //根据最新数据更新视图
        let checked = todos[row].checked
        checkBoxBtn.isSelected = checked
        let cell = tableView.cellForRow(at: IndexPath(row: row, section: 0)) as! TodoCell
        cell.todoLabel.textColor = checked ? .tertiaryLabel : .label
    }
}
