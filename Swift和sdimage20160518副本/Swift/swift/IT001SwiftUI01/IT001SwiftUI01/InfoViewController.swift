//
//  InfoViewController.swift
//  IT001SwiftUI01
//
//  Created by Box on 15/10/29.
//  Copyright © 2015年 Box. All rights reserved.
//

import UIKit

typealias funcBlock = (UIColor)->()

protocol changeColorDelegate : NSObjectProtocol {
    func sendMessageToDelegate(colorA colorB : UIColor)
}

class InfoViewController: UIViewController {
    
    weak var delegate:changeColorDelegate?
    
    var block : funcBlock?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.greenColor()
        self.title = "InfoVC"
        initView()
        
    }
    
    func initView() {
        
        let button = UIButton.init(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 150, 150)
        button.setTitle("Color", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: "changeColor:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        
        
        
    }
    
    func sendAMessage(newBlock : funcBlock){
        self.block = newBlock
    }
    
    func changeColor(sender : UIButton){
//        self.delegate?.sendMessageToDelegate(colorA: UIColor.redColor())
        
        self.block!(UIColor.yellowColor())
        
        
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
        print("InfoVC 被释放了 !!!!")
    }
}
