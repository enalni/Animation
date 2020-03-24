//
//  ViewController.swift
//  Animation
//
//  Created by Александр Николаевич on 24.03.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonSpring: SpringButton!
    @IBOutlet weak var viewSpring: SpringView!
    @IBOutlet weak var labelTextInView: UILabel!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSpring.setTitle("GO", for: .normal)
        labelTextInView.text = "WELCOME"
        labelTextInView.font.withSize(CGFloat(50))
    }
    
    @IBAction func getAnimationSpring(_ sender: SpringButton) {
        
        viewSpring.animation = animations.randomElement()!.rawValue
        viewSpring.curve = animationCurves.randomElement()!.rawValue
        viewSpring.duration = CGFloat((Double.random(in: 0.95..<1)))
        viewSpring.animate()
        

        text = "type animation - \(viewSpring.animation)"
        labelTextInView.text = text
        
        
        sender.setTitle("This is \(viewSpring.animation) animation" , for: .normal)
        
    }
}
