//
//  ViewController.swift
//  Homework 2.1.2
//
//  Created by Егор Скрутелев on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var turnOnButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        turnOnButton.layer.cornerRadius = 20
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
        greenLightView.alpha = 0.3
    }
    
    @IBAction func turnOnButtonPressed() {
        guard redLightView.alpha == 1 || yellowLightView.alpha == 1 else {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            turnOnButton.setTitle("Next", for: .normal)
            return
        }
        
        guard yellowLightView.alpha == 1 else {
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 1
            return
        }
        
        guard greenLightView.alpha == 1 else {
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
            greenLightView.alpha = 1
            return
        }
    }
}
