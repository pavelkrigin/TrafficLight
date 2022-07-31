//
//  ViewController.swift
//  TrafficLight
//
//  Created by Pavel Krigin on 29.7.22..
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorGreen: UIView!
    @IBOutlet var colorYellow: UIView!
    @IBOutlet var colorRed: UIView!
    
    @IBOutlet var colorButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colorRed.layer.cornerRadius = 56
        colorRed.alpha = 0.3
        colorYellow.layer.cornerRadius = 56
        colorYellow.alpha = 0.3
        colorGreen.layer.cornerRadius = 56
        colorGreen.alpha = 0.3
        
        colorButton.tintColor = .blue
        colorButton.backgroundColor = .gray
        colorButton.layer.cornerRadius = 10
        
    }

    @IBAction func changeColor(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        
        if colorRed.alpha != 1 && colorYellow.alpha != 1 {
            colorRed.alpha = 1
            colorGreen.alpha = 0.3
        } else if colorRed.alpha == 1 {
            colorRed.alpha = 0.3
            colorYellow.alpha = 1
            colorGreen.alpha = 0.3
        } else if colorYellow.alpha == 1 {
            colorGreen.alpha = 1
            colorYellow.alpha = 0.3
            
        } else if colorGreen.alpha == 1 {
            colorRed.alpha = 1
            colorGreen.alpha = 0.3
        }
    }
    
}

