//
//  ViewController.swift
//  ITSwiftDelegate
//
//  Created by Box on 15/10/28.
//  Copyright © 2015年 Box. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "ViewController"
        self.view.backgroundColor = UIColor.grayColor()
        
        let button = UIButton(type: UIButtonType.Custom)
        button.backgroundColor = UIColor.redColor()
        button.frame = CGRectMake(100, 100, 150, 150)
        button.setTitle("click", forState: UIControlState.Normal)
        button.addTarget(self, action: "push", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(button)
        
    }
    
    func push() {
        let nextVC = NextViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

