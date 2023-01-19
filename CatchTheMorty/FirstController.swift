//
//  FirstController.swift
//  CatchTheMorty
//
//  Created by Batuhan Berk Ertekin on 19.01.2023.
//

import UIKit

class FirstController: UIViewController {
    
    var time = 60
    var score = 0
    
    var timer = Timer()
    
    var sayac = Timer()
    var  mortyArray = [UIImageView]()
    
    
    
    @IBOutlet weak var morty1: UIImageView!
    
    @IBOutlet weak var morty4: UIImageView!
    @IBOutlet weak var morty3: UIImageView!
    @IBOutlet weak var morty2: UIImageView!
    
    @IBOutlet weak var morty6: UIImageView!
    @IBOutlet weak var morty5: UIImageView!
    
    @IBOutlet weak var morty7: UIImageView!
    
    @IBOutlet weak var morty9: UIImageView!
    @IBOutlet weak var morty8: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    

    override func viewDidLoad() {
        scoreLabel.text = "Score : \(score)"
        timeLabel.text = "Time : \(time)"
        
        
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(hideMorty), userInfo: nil,
                      repeats: true)
        
        sayac = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countingTime), userInfo: nil, repeats: true)
        
     
        
        morty1.isUserInteractionEnabled = true
        morty2.isUserInteractionEnabled = true
        morty3.isUserInteractionEnabled = true
        morty4.isUserInteractionEnabled = true
        morty5.isUserInteractionEnabled = true
        morty6.isUserInteractionEnabled = true
        morty7.isUserInteractionEnabled = true
        morty8.isUserInteractionEnabled = true
        morty9.isUserInteractionEnabled = true
        
        
        
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(touchMorty))
        
        
        
        morty1.addGestureRecognizer(gestureRecognizer)
        morty2.addGestureRecognizer(gestureRecognizer1)
        morty3.addGestureRecognizer(gestureRecognizer2)
        morty4.addGestureRecognizer(gestureRecognizer3)
        morty5.addGestureRecognizer(gestureRecognizer4)
        morty6.addGestureRecognizer(gestureRecognizer5)
        morty7.addGestureRecognizer(gestureRecognizer6)
        morty8.addGestureRecognizer(gestureRecognizer7)
        morty9.addGestureRecognizer(gestureRecognizer8)
        
        
        mortyArray = [morty1,morty2,morty3,morty4,morty5,morty6,morty7,morty8,morty9]
        
        hideMorty()
        
    }
    
    
    
    
    
    
    @objc func touchMorty() {
        
   
        score = score + 1
        
        
        scoreLabel.text! = "Score : \(score)"
        
        
     
        
        
        
        
        
        
        
        
    }
    
  
    
    @objc func hideMorty(){
        
        for i in mortyArray{
            i.isHidden = true
            
        }
        
        let randomNumber = Int(arc4random_uniform(UInt32(mortyArray.count - 1)))
        
        
        
        mortyArray[randomNumber].isHidden = false
        
    }
    
    

    
    @objc func  countingTime() {
        
        
        
        timeLabel.text = "Time : \(time)"
        
        time = time - 1
        
        if time == 0 {
            
            
            timer.invalidate()
           sayac.invalidate()
            
            
            timeLabel.text = "Süre Bitti"
            
            for i in mortyArray {
               
                i.isHidden = true
                
            }
            
        }
        
        
        
        
        
    }
    
    
    
    

}
