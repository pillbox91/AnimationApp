//
//  ViewController.swift
//  AnimationApp
//
//  Created by Андрей Аверьянов on 24.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet weak var testCoreAnimationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    @IBAction func runCoreAnimationButton(_ sender: UIButton) {
        sender.pulsate()
        
        coreAnimationView.frame.origin.x -= 40
        testCoreAnimationView.frame.origin.x -= 40
    }
}

