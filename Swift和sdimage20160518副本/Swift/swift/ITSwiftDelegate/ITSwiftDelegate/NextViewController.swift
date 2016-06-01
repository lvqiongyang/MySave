//
//  NextViewController.swift
//  ITSwiftDelegate
//
//  Created by Box on 15/10/28.
//  Copyright © 2015年 Box. All rights reserved.
//

import UIKit

class NextViewController: UIViewController,changeColor {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Next"
        let button = UIButton(type: UIButtonType.Custom)
        button.backgroundColor = UIColor.redColor()
        button.frame = CGRectMake(100, 100, 150, 150)
        button.setTitle("click", forState: UIControlState.Normal)
        button.addTarget(self, action: "push", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(button)
    }
    
    func push() {
        let nextVC = InfoViewController()
        nextVC.delegate = self
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func changeColorWithColor(color color: UIColor) {
        self.view.backgroundColor = color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print(" next vc 的内存已近释放 !!! ")
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
