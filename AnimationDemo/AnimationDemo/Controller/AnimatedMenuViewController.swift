//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Steve Jones on 18/06/2020.
//  Copyright © 2020 95Design. All rights reserved.
//

import UIKit

class AnimatedMenuViewController: UIViewController {



    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var buttonFillView: UIView!
    @IBOutlet weak var toggleMenuButton: UIButton!
    

    @IBOutlet weak var menuButtonOne: UIButton!
    @IBOutlet weak var menuButtonTwo: UIButton!
    @IBOutlet weak var menuButtonThree: UIButton!
    @IBOutlet weak var menuButtonFour: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonFillView.layer.cornerRadius = 22
        
        //menu button circles
        menuButtonOne.layer.cornerRadius = 22
        menuButtonTwo.layer.cornerRadius = 22
        menuButtonThree.layer.cornerRadius = 22
        menuButtonFour.layer.cornerRadius = 22
        
        menuButtonOne.alpha = 0
        menuButtonTwo.alpha = 0
        menuButtonThree.alpha = 0
        menuButtonFour.alpha = 0
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    
    
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
    
 
    @IBAction func openMenuButtonPressed(_ sender: UIButton) {
        
        if buttonFillView.transform == .identity {
            
            UIView.animate(withDuration: 1, animations: {
                self.buttonFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -60)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(180) )
            }) { (true) in
                UIView.animate(withDuration: 0.5) {
                    self.toggleMenuButtons()
                }
                
            }
        } else {
            print("Already Transformed")
            UIView.animate(withDuration: 1, animations: {
                self.toggleMenuButtons()
                self.buttonFillView.transform = .identity
                self.menuView.transform = .identity
                self.toggleMenuButton.transform = .identity
                
            })
        }
    }
    
    func toggleMenuButtons() {
        let alpha = CGFloat(menuButtonOne.alpha == 0 ? 1 : 0)
        menuButtonOne.alpha = alpha
        menuButtonTwo.alpha = alpha
        menuButtonThree.alpha = alpha
        menuButtonFour.alpha = alpha
        
    }
    
    
    
    
    
    
    //MARK:- menu button actions
    
    
    @IBAction func pencilButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ToSemiCirclePage", sender: self)
        print("pencil")
    }
    
    @IBAction func tagButtonPressed(_ sender: UIButton) {
        print("tag")
    }
    
    
    @IBAction func locationButtonPressed(_ sender: UIButton) {
        print("location")
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        print("add")
    }
    
    
}




