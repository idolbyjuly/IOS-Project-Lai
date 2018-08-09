//
//  ViewController.swift
//  target game
//
//  Created by 姜来 on 2018/8/8.
//  Copyright © 2018年 姜来. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        let alert=UIAlertController(title:"Hello Folks",message:"This is my first app game",preferredStyle:.alert)
        
        let action=UIAlertAction(title:"OMG",style:.default,handler:nil)
        alert.addAction(action)
        present(alert,animated:true,completion:nil)
    }


}

