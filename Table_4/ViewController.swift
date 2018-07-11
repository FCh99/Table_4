//
//  ViewController.swift
//  Table_4
//
//  Created by Fausto Checa on 11/7/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // NOTES: change to sports people
    // First you need a database with names, ages and picture
    
    let names = ["Cristiano Ronaldo", "Lionel Messi", "Rafa Nadal", "Roger Federer", "Sergio García", "Jon Rahm", "Pau Gasol", "Cristiano Ronaldo", "Lionel Messi", "Rafa Nadal", "Roger Federer", "Sergio García", "Jon Rahm", "Pau Gasol", "Cristiano Ronaldo", "Lionel Messi", "Rafa Nadal", "Roger Federer", "Sergio García", "Jon Rahm", "Pau Gasol" ]
    
    let photos = ["ronaldo", "messi", "nadal", "federer", "sergio", "rahm", "gasol", "ronaldo", "messi", "nadal", "federer", "sergio", "rahm", "gasol", "ronaldo", "messi", "nadal", "federer", "sergio", "rahm", "gasol"]
    
    
    let ages = [33, 31, 32, 36, 38, 23, 38, 33, 31, 32, 36, 38, 23, 38, 33, 31, 32, 36, 38, 23, 38]
    
    
    @IBOutlet weak var tableView: UITableView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! MyTableViewCell
        cell.nombre.text = names[indexPath.row]
        cell.edad.text = String(ages[indexPath.row])
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueId" {
            let destVc = segue.destination as! ViewController2
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                let sir = selectedIndexPath.row
                
                print(sir)
                let name = names[sir]
                let age = String(ages[sir])
                let photo = photos[sir]
                
                //print(name)
                //print(age)
                
                destVc.nombreX = name
                destVc.edadX = age
                destVc.photoXName = photo
                
               
            }
            
            
        }
        
    }
    
    

   

}

