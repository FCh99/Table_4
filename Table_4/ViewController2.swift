//
//  ViewController2.swift
//  Table_4
//
//  Created by Fausto Checa on 11/7/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var nombre2Label: UILabel!
    
    @IBOutlet weak var age2Label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var nombreX = ""
    var edadX = ""
    var photoXName = ""
 
    override func viewDidLoad() {
        super.viewDidLoad()

       nombre2Label.text = nombreX
        age2Label.text = edadX
        imageView.image = UIImage(named: photoXName)
        
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
