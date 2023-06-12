//
//  TodoCell.swift
//  Todos
//
//  Created by 刘军 on 2021/11/25.
//

import UIKit

class TodoCell: UITableViewCell {
    @IBOutlet weak var checkBoxBtn: UIButton!
    @IBOutlet weak var todoLabel: UILabel!
    
    //awakeFromNib和cellForItemAt的执行顺序:
    //dequeueReusableCell-->awakeFromNib-->dequeueReusableCell后面的内容
    override func awakeFromNib() {
        super.awakeFromNib()
        checkBoxBtn.setImage(UIImage(systemName: "circle"), for: .normal)
        checkBoxBtn.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
