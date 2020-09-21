//
//  ViewController.swift
//  Simple App
//
//  Created by Jovan ho on 2020/9/20.
//  Copyright © 2020 Sydney Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var background: UIView!
    @IBOutlet weak var textLabel: UILabel!
    
    func setRandomBackgroundColor() {
        let randomColor = Int(arc4random_uniform(UInt32(UIColor.colors.count)))
        self.background.backgroundColor = UIColor.colors[randomColor]
    }
    
    func setRandomText() {
        let randomText = Int(arc4random_uniform(UInt32(Text.texts.count)))
        self.textLabel.text = Text.texts[randomText]
    }
    
        
    @IBAction func button(_ sender: Any) {
        self.setRandomBackgroundColor()
        self.setRandomText()
    }
    
}

