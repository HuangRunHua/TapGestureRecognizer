//
//  ViewController.swift
//  TouchRose
//
//  Created by Joker Hook on 2019/2/15.
//  Copyright © 2019 com.icloud@h76joker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /**
     *检测轻点手势
     */
    var tapGestureRecognizer: UITapGestureRecognizer!
    var button: UIButton!
    let snowFlowerCell = CAEmitterCell()
    let emitterLayer = CAEmitterLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGestureRecognizer.numberOfTouchesRequired = 1 // 检测轻触手势
        tapGestureRecognizer.numberOfTapsRequired = 1 // 点击次数
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        /**
         *检测轻点手势
         */
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTaps(sender:)))
    }
    
    @objc func handleTaps(sender: UITapGestureRecognizer) {
        for touchCounter in 0..<sender.numberOfTapsRequired {
            let touchPoint = sender.location(ofTouch: touchCounter, in: sender.view)
            print("Touch \(touchCounter + 1): \(touchPoint)")
            initButton(point: touchPoint)
            playAnimation()
        }
    }
    
    func initButton(point: CGPoint) {
        button = UIButton(frame: CGRect(x: 0, y: 0, width: 1.6, height: 1))
        button.center = point
        button.setImage(UIImage(named: "1"), for: .normal)
        self.view.addSubview(button)
    }
    
    func playAnimation() {
        UIView.animate(withDuration: 1.0, animations: {
            let scale = CGAffineTransform(scaleX: 200, y: 200)
            self.button.transform = scale
        }) { (_) in
            UIView.animate(withDuration: 1.0) {
                self.button.alpha = 0.0
            }
        }
    }
    
    
    
}

