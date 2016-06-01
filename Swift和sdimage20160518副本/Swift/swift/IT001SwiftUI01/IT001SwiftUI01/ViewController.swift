//
//  ViewController.swift
//  IT001SwiftUI01
//
//  Created by Box on 15/10/29.
//  Copyright © 2015年 Box. All rights reserved.
//


import UIKit

let CellID = "CellID"

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "VC"
        self.view.backgroundColor = UIColor.grayColor()
        
        
        initView()

    
    }
    
    func initView() {
        
        let tableView = UITableView.init(frame: self.view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorColor = UIColor.brownColor()
        //类的名字直接调用.self 代表获取当前的类
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: CellID)
        
        self.view.addSubview(tableView)
    }
    
    // MARK: - 表的代理方法
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath: indexPath)
        cell.textLabel?.text = "row \(indexPath.row)" + " " + "123"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if 0 == indexPath.row {
            let nextVC = NextViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    deinit {
        print("VC 被释放了 !!!!")
    }

}

