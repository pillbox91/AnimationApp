//
//  ViewController.swift
//  AnimationApp
//
//  Created by Андрей Аверьянов on 24.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func runCoreAnimationButton(_ sender: UIButton) {
        sender.pulsate()
    }
    
}

