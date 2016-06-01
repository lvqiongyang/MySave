//
//  NextViewController.swift
//  IT001SwiftUI01
//
//  Created by Box on 15/10/29.
//  Copyright © 2015年 Box. All rights reserved.
//

import UIKit

class NextViewController: UIViewController ,changeColorDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "NextVC"
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        
        initView()
        
        
        
        
    }
    
    func initView() {
        
        let button = UIButton.init(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 150, 150)
        button.setTitle("Push", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: "push:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        
        
        
    }
    
    func push(sender : UIButton){
        let infoVC = InfoViewController()
//        infoVC.delegate = self
        
//        infoVC.block = {
//            self.view.backgroundColor = UIColor.redColor()
//        }
//        infoVC.block = {color in
//            self.view.backgroundColor = color
//        }
        
        infoVC.sendAMessage { (color) -> () in
            self.view.backgroundColor = color
        }
        
        self.navigationController?.pushViewController(infoVC, animated: true)
    }
    
    func sendMessageToDelegate(colorA colorB: UIColor) {
        self.view.backgroundColor = colorB
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    deinit {
        print("NextVC 被释放了 !!!!")
    }

}
