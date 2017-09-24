//
//  ViewController.swift
//  UIButton控件的使用
//
//  Created by Benjamin Liu on 2017/9/24.
//  Copyright © 2017年 Benjamin Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bt1 = UIButton(type: UIButtonType.infoDark)
        bt1.frame = CGRect(x: 130, y: 80, width: 40, height: 40)
        
        let bt2 = UIButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect(x: 80, y: 180, width: 150, height: 44)
        bt2.backgroundColor = UIColor.purple
        bt2.tintColor = UIColor.yellow
        bt2.setTitle("Tap me", for: UIControlState())
        bt2.addTarget(self, action: #selector(tapMe), for: UIControlEvents.touchUpInside)
        
        let bt3 = UIButton(type: UIButtonType.roundedRect)
        bt3.backgroundColor = UIColor.brown
        bt3.tintColor = UIColor.white
        bt3.setTitle("Tap me", for: UIControlState())
        bt3.frame = CGRect(x: 80, y: 280, width: 150, height: 44)
        bt3.layer.masksToBounds = true
        bt3.layer.cornerRadius = 10
        bt3.layer.borderWidth = 4
        bt3.layer.borderColor = UIColor.lightGray.cgColor
        
        self.view.addSubview(bt1)
        self.view.addSubview(bt2)
        self.view.addSubview(bt3)
    }
    
    @objc func tapMe(){
        let alert = UIAlertController(title: "Information", message: "UIButton event", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
            print(alert.title!)
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
            print("After Tap the button, something needs to be done...")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

