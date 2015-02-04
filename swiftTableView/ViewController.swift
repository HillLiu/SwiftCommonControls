//
//  ViewController.swift
//  swiftTableView
//
//  Created by 邢现庆 on 15-2-4.
//  Copyright (c) 2015年 邢现庆. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var tableView : UITableView?
    var titles : NSMutableArray?
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="UI控件"
        
        self.titles =
            ["UILable",
            "UIImageView",
            "UIButton",
            "UITextField",
            "UISwitch",
            "UISlider",
            "UISegmentedControl",
            "UIWebView",
            "UITextView",
            "UIActionSheet",
            "ActivityIndicatorView",
            "UIProgressView",
            "UIPickerView",
            "UIDatePicker",
            "UIPageControl",
            "UIToolbar",
            "UISearchBar",
            "UIScrollView"]
        
        
        
        self.tableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height), style:UITableViewStyle.Plain)
        self.tableView?.delegate=self
        self.tableView?.dataSource=self
        self.tableView?.tableFooterView=UIView()
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView!)
        
        
        
    }
    //UITableViewDelegate & UITableViewDatasource
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.titles!.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        let str = self.titles!.objectAtIndex(indexPath.row) as String
        cell.textLabel!.text=str
        cell.imageView!.image = UIImage(named: "swift-hero")
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        var detailVC = DetailViewController()
        
        let str = self.titles!.objectAtIndex(indexPath.row) as String
        detailVC.title=str
        self.navigationController?.pushViewController(detailVC, animated: false)
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }

}

