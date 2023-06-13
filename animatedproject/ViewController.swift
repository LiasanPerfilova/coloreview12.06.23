//
//  ViewController.swift
//  animatedproject
//
//  Created by Liaisan on 6/12/23.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var coloreView: SpringView!

    @IBOutlet var pressedLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var animations: [String] = ["pop","slideLeft","slideRight", "slideDown", "slideUp", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp", "fadeIn", "fadeOut", "fadeOutIn", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn", "zoomOut", "fall", "shake", "flipX", "flipY", "morph", "squeeze", "flash", "wobble", "swing"]
    
    var curves: [String] = [ "easeIn", "easeOut", "easeInOut", "linear", "spring", "easeInSine", "easeOutSine", "easeInOutSine", "easeInQuad", "easeOutQuad", "easeInOutQuad", "easeInCubic", "easeOutCubic", "easeInOutCubic", "easeInQuart", "easeOutQuart", "easeInOutQuart", "easeInQuint", "easeOutQuint", "easeInOutQuint", "easeInExpo", "easeOutExpo", "easeInOutExpo", "easeInCirc", "easeOutCirc", "easeInOutCirc", "easeInBack", "easeOutBack", "easeInOutBack"]
    
    var forces: [Int] = [1, 2, 3, 4, 5]
    var durations: [Int] = [1, 2, 3, 4, 5]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        curveLabel.text = coloreView.curve
        pressedLabel.text = coloreView.animation
        forceLabel.text = coloreView.force.formatted()
        durationLabel.text = coloreView.duration.formatted()
        delayLabel.text = coloreView.delay.formatted()
        
        
    }
    
    
    @IBAction func animatedButton(_ sender: SpringButton) {
        coloreView.animation = animations.randomElement()!
        coloreView.curve = curves.randomElement()!
        coloreView.force = CGFloat(forces.randomElement()!)
        coloreView.duration = CGFloat(durations.randomElement()!)
        coloreView.delay = 1
        coloreView.animate()
        curveLabel.text = coloreView.curve
        pressedLabel.text = coloreView.animation
        forceLabel.text = coloreView.force.formatted()
        durationLabel.text = coloreView.duration.formatted()
        delayLabel.text = coloreView.delay.formatted()
        
        
    }
    
}

