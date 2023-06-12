//
//  TodoTableVC.swift
//  Todos
//
//  Created by 刘军 on 2021/11/28.
//

import UIKit

protocol TodoTableVCDelegate{
    func didAdd(name: String)
    func didEdit(name: String)
}

class TodoTableVC: UITableViewController {
    
    var delegate: TodoTableVCDelegate?
    var name: String?
    
    @IBOutlet weak var todoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //todoTextView.delegate = self //在storyboard上已做
        
        todoTextView.becomeFirstResponder()
        
        todoTextView.text = name
        
        if name != nil{ navigationItem.title = "编辑待办事项" }
        
        navigationItem.leftBarButtonItem?.image = pointIcon("chevron.backward.circle.fill")
        navigationItem.rightBarButtonItem?.image = pointIcon("checkmark.circle.fill")
    }
    @IBAction func back(_ sender: Any) { navigationController?.popViewController(animated: true) }
    
    @IBAction func done(_ sender: Any) {
         
        if !todoTextView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            let name = todoTextView.text!
            if self.name != nil{
                delegate?.didEdit(name: name)
            }else{
                delegate?.didAdd(name: name)
            }
        }
        
        navigationController?.popViewController(animated: true)
    }
}

//UITextViewDelegate
extension TodoTableVC: UITextViewDelegate{
    func textViewDidChange(_ textView: UITextView) {
        //让tableview重新布局(带动画),会根据storyboard上定的约束换行或减行
        
        //老用法
        //tableView.beginUpdates()
        //tableView.endUpdates()
        
        //新版做法
        tableView.performBatchUpdates { }
    }
}
