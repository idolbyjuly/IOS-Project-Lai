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
        startNewRound()
        //currentValue = lroundf(slider.value)
        //targetValue = 1 + Int(arc4random_uniform(100))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        //var difference: Int
        //difference = currentValue - targetValue
        //if difference < 0{
        //    difference = difference * -1
        //}
       // if currentValue > targetValue{
       //     difference = currentValue - targetValue
      //  }else if currentValue < targetValue{
       //     difference = targetValue - currentValue
      //  }else{
       //     difference = 0
       // }
        
        let difference = abs(currentValue - targetValue)
        let point = 100 - difference
        score += point
        //let message = "current value is: \(currentValue)" + "\ntarget value is: \(targetValue)" + "\ndifference is: \(difference)"
        let message = "your score is: \(point)"
        let alert=UIAlertController(title:"Hello Folks",message: message,preferredStyle:.alert)
        let action=UIAlertAction(title:"OK",style:.default,handler:nil)
        alert.addAction(action)
        present(alert,animated:true,completion:nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(slider:UISlider){
       // print("current value for siler is: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound(){
        round  += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
        
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreValue.text = String(score)
        roundVaule.text = String(round)
    }


}

