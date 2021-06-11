//
//  ViewController.swift
//  UIKit Animation
//
//  Created by Rizal Hilman on 06/06/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var rect: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn]){
//            self.rect.frame.origin = CGPoint(x : 300, y: self.rect.frame.origin.y)
//        }completion: {isDone in
//            print("Animasi Selesai")
//        }
        self.rect.center = CGPoint(x: 0, y:100)
        UIView.animateKeyframes(withDuration: 5.0, delay: 0, options: [.autoreverse]) {
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.rect.center = CGPoint(x: self.view.frame.width/2, y: 100)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.45, relativeDuration: 0.25) {
                self.rect.center = CGPoint(x: self.rect.center.x , y: self.rect.center.y + 100)
            }
            
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.rect.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            }
            
        }
        completion: { IsComplete in
            
        }
        // Do any additional setup after loading the view.
        
        // MARK: 1. Change rectangle properties
        
        // MARK: 2. Move rectangle position
        
        // MARK: 2.1. Rotate rectangle
        
        // MARK: 3. Change rectangle size
        
        // MARK: 4. Keyframes
        
    }
    
    // MARK: Gesture Actions
    

}

