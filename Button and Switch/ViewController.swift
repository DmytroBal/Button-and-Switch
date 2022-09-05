//
//  ViewController.swift
//  Button and Switch
//
//  Created by Dmytro Bal on 04.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    let mySwitch = UISwitch()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
        // switch properties
        self.mySwitch.frame = CGRect.zero
        self.mySwitch.center = self.view.center
        self.view.addSubview(self.mySwitch)
        
        self.mySwitch.thumbTintColor = UIColor.purple
        self.mySwitch.onTintColor = UIColor.cyan
        self.mySwitch.isOn = true
        self.mySwitch.addTarget(self, action: #selector(buttonIsOn(target:)), for: .valueChanged)
        
        // button properties
        self.button.frame = CGRect(x: 110, y: 700, width: 200, height: 80)
        self.button.backgroundColor = .orange
        self.button.setTitle("Press me", for: .normal)
        self.button.setTitle("EAH", for: .highlighted)
        self.button.layer.cornerRadius = 14
        self.view.addSubview(self.button)
        
    }

    @objc func buttonIsOn(target: UISwitch)  {
        if target.isOn {
            self.button.isUserInteractionEnabled = true
        } else {
            self.button.isUserInteractionEnabled = false
        }
    }

}

