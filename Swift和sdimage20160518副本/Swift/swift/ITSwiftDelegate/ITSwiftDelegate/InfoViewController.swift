//
//  InfoViewController.swift
//  ITSwiftDelegate
//
//  Created by Box on 15/10/28.
//  Copyright © 2015年 Box. All rights reserved.
//

import UIKit

protocol changeColor : NSObjectProtocol {
    func changeColorWithColor(color color:UIColor)
}

class InfoViewController: UIViewController {

    weak var delegate : changeColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.greenColor()
        
        let button = UIButton(type: UIButtonType.Custom)
        button.backgroundColor = UIColor.redColor()
        button.frame = CGRectMake(100, 100, 150, 150)
        button.setTitle("changeColor", forState: UIControlState.Normal)
        button.addTarget(self, action: "changeColorFunc", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    func changeColorFunc() {
        self.delegate?.changeColorWithColor(color: UIColor.cyanColor())
    }
    
    deinit {
        print(" info vc 的内存已近释放 !!! ")
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

}
