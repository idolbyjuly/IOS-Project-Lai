//
//  ViewController.swift
//  target game
//
//  Created by 姜来 on 2018/8/8.
//  Copyright © 2018年 姜来. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var targetLabel:UILabel!
    @IBOutlet weak var roundVaule:UILabel!
    @IBOutlet weak var scoreValue:UILabel!
    
    var currentValue : Int = 50
    var targetValue: Int = 0
    var score = 0
    var round: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // startNewRound()
        startNewGame()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        let difference = abs(currentValue - targetValue)
        var point = 100 - difference
        let title: String
        if difference == 0{
            title="get the lotto!"
            point += 100
        }else if difference < 5 {
            title = "prefect!"
            point += 50
        }else if difference < 10 {
            title = "great!"
        }else{
            title = "try again! It's too far!"
        }
        score += point
        let message = "your score is: \(point)"
        let alert=UIAlertController(title:title,message: message,preferredStyle:.alert)
        let action=UIAlertAction(title:"OK",style:.default,handler:nil)
        alert.addAction(action)
        present(alert,animated:true,completion:nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(slider:UISlider){
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func startOver(){
        startNewGame()
    }
    
    func startNewRound(){
        round  += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func startNewGame(){
        round = 0
        score = 0
        startNewRound()
    }
        
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreValue.text = String(score)
        roundVaule.text = String(round)
    }


}

