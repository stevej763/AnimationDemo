//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Steve Jones on 18/06/2020.
//  Copyright © 2020 95Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var buttonFillView: UIView!
    @IBOutlet weak var toggleMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonFillView.layer.cornerRadius = 22
        
    }
 
    @IBAction func openMenuButtonPressed(_ sender: UIButton) {
        
        if buttonFillView.transform == .identity {
            
            UIView.animate(withDuration: 1, animations: {
                self.buttonFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -60)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(180) )
            }) { (true) in
                
            }
        } else {
            print("Already Transformed")
            UIView.animate(withDuration: 01, animations: {
                self.buttonFillView.transform = .identity
                self.menuView.transform = .identity
                self.toggleMenuButton.transform = .identity
            }) { (true) in
                
            }
        }
    }
    
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
    
    
}




