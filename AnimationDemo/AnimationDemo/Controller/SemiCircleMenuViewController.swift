//
//  SemiCircleMenuViewController.swift
//  AnimationDemo
//
//  Created by Steve Jones on 18/06/2020.
//  Copyright © 2020 95Design. All rights reserved.
//

import UIKit

class SemiCircleMenuViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var backgroundFill: UIView!
    @IBOutlet weak var expandMenuButton: UIButton!
    
    
    @IBOutlet weak var menuButtonOne: UIButton!
    @IBOutlet weak var menuButtonTwo: UIButton!
    @IBOutlet weak var menuButtonThree: UIButton!
    @IBOutlet weak var menuButtonFour: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundFill.layer.cornerRadius = 22
        
        menuButtonOne.alpha = 0
        menuButtonTwo.alpha = 0
        menuButtonThree.alpha = 0
        menuButtonFour.alpha = 0

    }

    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }

    
    @IBAction func expandMenuPressed(_ sender: UIButton) {
        
        if backgroundFill.transform == .identity {
            
            UIView.animate(withDuration: 0.3, animations: {
                self.backgroundFill.transform = CGAffineTransform(scaleX: 5, y: 5)
                //self.menuView.transform = CGAffineTransform(translationX: 0, y: -80)
                
                
                UIView.animate(withDuration: 0.3, delay: 0.3, animations: {
                    self.toggleMenuButtons()
                })
                UIView.animate(withDuration: 0.3, animations: {
                    self.expandMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(360))
                    //self.expandMenuButton.transform = CGAffineTransform(scaleX: 2, y: 2)
                })
                    
                    
                    
                
            })
        } else {
            UIView.animate(withDuration: 0.3) {
                self.toggleMenuButtons()
            }
            
            
            UIView.animate(withDuration: 0.3, delay: 0.3, animations: {
                self.backgroundFill.transform = .identity
                self.menuView.transform = .identity
                self.expandMenuButton.transform = .identity
                
            })
        }
        
    }
    
    
    @IBAction func paperclipPressed(_ sender: UIButton) {
        print("paperclip")
    }
    @IBAction func bookPressed(_ sender: UIButton) {
        print("book")
    }
    @IBAction func meterPressed(_ sender: UIButton) {
        print("meter")
    }
    @IBAction func pencilPressed(_ sender: UIButton) {
        print("pencil")
    }
    
    
    
    func toggleMenuButtons() {
            let alpha = CGFloat(self.menuButtonOne.alpha == 0 ? 1 : 0)
            self.menuButtonOne.alpha = alpha
            self.menuButtonTwo.alpha = alpha
            self.menuButtonThree.alpha = alpha
            self.menuButtonFour.alpha = alpha
       }
    
    
}

