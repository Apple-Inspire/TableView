//
//  ViewController.swift
//  Tableviewc
//
//  Created by yashn on 03/09/18.
//  Copyright © 2018 yashn. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource  {
    
    @IBOutlet weak var tabelviewo: UITableView!
    
    let list = ["Yash" , "Umang" ,"Sudanshu", "Vishitosh" , "Diyanunshu" ,"Prakhar"]
    //let list2 = ["Yash" , "Umang" ,"Sudanshu", "Vishitosh" , "Diyanunshu" ,"Prakhar"]
    let list2 = ["Yash" , "Umang" ,"Sudanshu", "Vishitosh" , "Diyanunshu" ,"Prakhar"]

    var prof: Int = 0
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        tabelviewo.dataSource = self
        tabelviewo.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
        //print(list.count)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        prof = indexPath.row
        if(prof == 0)
        {
            performSegue(withIdentifier: "Yash", sender: self)
        }
        if(prof == 1)
        {
            performSegue(withIdentifier: "Umang", sender: self)
        }
        if(prof == 2)
        {
            performSegue(withIdentifier: "Sudanshu", sender: self)
        }
        if(prof == 3)
        {
            performSegue(withIdentifier: "Vishitosh", sender: self)
        }
        if(prof == 4)
        {
            performSegue(withIdentifier: "Diyanunshu", sender: self)
        }
        if(prof == 5)
        {
            performSegue(withIdentifier: "Prakhar", sender: self)
        }
        
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
        //print(cell)
    }

}

