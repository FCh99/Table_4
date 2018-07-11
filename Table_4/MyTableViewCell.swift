//
//  TableViewCell.swift
//  Table_4
//
//  Created by Fausto Checa on 11/7/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var edad: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
