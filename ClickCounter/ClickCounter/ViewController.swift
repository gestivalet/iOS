//
//  ViewController.swift
//  ClickCounter
//
//  Created by Gabriel Estivalet on 1/29/19.
//  Copyright © 2019 gestivalet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var countDec = 0
    var label: UILabel!
    var labelDec2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: label
        let label = UILabel()
        label.frame = CGRect(x: 150, y:150, width:60, height:60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // label 2
        let labelDec = UILabel()
        labelDec.frame = CGRect(x:100, y:100, width:100, height:100)
        labelDec.text = "0"
        view.addSubview(labelDec)
        self.labelDec2 = labelDec
        
        // MARK: button
        let button = UIButton()
        button.frame = CGRect(x: 150, y:250, width:60, height:60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        button.addTarget(self, action: #selector(ViewController.decreaseCount), for: UIControl.Event.touchUpInside)
        
        
        // decrease button
        let buttonDec = UIButton()
        buttonDec.frame = CGRect(x: 80, y: 80, width: 280, height: 80)
        buttonDec.setTitle("Click to drop 10!", for: .normal)
        buttonDec.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(buttonDec)
        
        buttonDec.addTarget(self, action: #selector(ViewController.decreaseMainCounter), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decreaseCount() {
        self.countDec -= 1
        self.labelDec2.text = "\(self.countDec)"
    }
    
    @objc func decreaseMainCounter() {
        self.count -= 10
        self.label.text = "\(self.count)"
    }

    @objc func changeBackground() {
        self.view.backgroundColor = UIColor.red
    }

}

