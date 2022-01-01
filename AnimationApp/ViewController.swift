//
//  ViewController.swift
//  AnimationApp
//
//  Created by Андрей Аверьянов on 24.12.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    @IBAction func runCoreAnimationButton(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
                self.coreAnimationView.frame.origin.x -= 40
            }
        
    }
    
    @IBAction func runSpringAnimationbutton(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.curve = Spring.AnimationCurve.EaseInCirc.rawValue
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        sender.animation = "swing"
        sender.animate()
    }
}

