//
//  DetailViewController.swift
//  swiftTableView
//
//  Created by 邢现庆 on 15-2-4.
//  Copyright (c) 2015年 邢现庆. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{

    
    var items : NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.items =
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
                "UIPickerView"]
        
        var rect = CGRectMake(10, 100, 300, 50)
        
        var color = UIColor.grayColor()
        
        if self.title == "UILable"{
            var lable = UILabel(frame: rect)
            lable.backgroundColor = color
            lable.text = "我是一个Lable"
            self.view.addSubview(lable)
            
        }
        if self.title == "UIButton" {
            var btn = UIButton.buttonWithType(UIButtonType.System) as UIButton
            btn.frame = rect
            btn.backgroundColor = color
            btn.setTitle("我是一个Button", forState: UIControlState.Normal)
            btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            btn.titleColorForState(UIControlState.Normal)
            btn.titleForState(UIControlState.Normal)
            btn.addTarget(self, action: "btnAction", forControlEvents: UIControlEvents.TouchUpInside)
            
            self.view.addSubview(btn)
    
        }
        
        if self.title == "UIImageView" {
            var imgView = UIImageView(frame: CGRectMake(20, 100, 100, 100))
            imgView.image = UIImage(named: "swift-hero")
            self.view.addSubview(imgView)
        }
        
        if self.title == "UISlider" {
            
            var slider = UISlider(frame:rect)
            self.view.addSubview(slider)
        }
        
        if self.title == "UISwitch" {
            
            var swh = UISwitch(frame: CGRectMake(50, 100, 50, 40))
            swh.on = true
            self.view.addSubview(swh)
        }

        if self.title == "UIWebView" {
            var webView = UIWebView(frame:self.view.bounds)
            var url = NSURL(string: "http://baidu.com")
            var request = NSURLRequest(URL: url!)
            webView.loadRequest(request)
            self.view.addSubview(webView)
        }
        
        if self.title == "UISegmentedControl" {
            var segmentControl = UISegmentedControl(items:["A", "B", "C", "D"])
            segmentControl.frame = rect
            self.view.addSubview(segmentControl)
        }
        
        if self.title == "UITextField" {
            var textField = UITextField(frame:rect)
            textField.backgroundColor = color
            textField.placeholder = "input text"
            self.view.addSubview(textField)
        }
        if self.title == "UITextView"
        {
            var textView = UITextView(frame:CGRectMake(10.0, 120.0, 300.0, 200.0))
            textView.backgroundColor = color
            textView.editable = false
            textView.font = UIFont.systemFontOfSize(20)
            textView.text = "我是一个UITextView"
            self.view.addSubview(textView)
        }

        if self.title == "UIActionSheet"
        {
            // Button
            var button = UIButton.buttonWithType(UIButtonType.System) as? UIButton
            button!.frame = CGRectMake(60.0, 120.0, 200.0, 50.0)
            button!.backgroundColor = UIColor.grayColor()
            button?.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            button!.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
            button?.setTitle("Show ActionSheet", forState: UIControlState.Normal)
            button?.setTitle("Show ActionSheet", forState: UIControlState.Highlighted)
            button?.addTarget(self, action: "showActionSheet", forControlEvents: UIControlEvents.TouchUpInside)
            button!.tag = 101
            self.view.addSubview(button!)
        }
        
        if self.title == "ActivityIndicatorView" {
            
            var activity = UIActivityIndicatorView(frame: CGRectMake(100, 100, 100, 100))
            activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
            activity.startAnimating()
            self.view.addSubview(activity)
            
        }
        if self.title == "UIProgressView" {
            
            var progressView = UIProgressView(frame: rect)
            progressView.progress = 0.5
            self.view.addSubview(progressView)
            
        }
        if self.title == "UIPickerView" {
            
            var pickerView = UIPickerView(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height-300, UIScreen.mainScreen().bounds.width, 300))
            pickerView.delegate = self
            pickerView.dataSource = self
            self.view.addSubview(pickerView)
            
        }
        if self.title == "UIDatePicker"{
            var datePicker = UIDatePicker(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height-300, UIScreen.mainScreen().bounds.width, 300))
            self.view.addSubview(datePicker)
        }
        if self.title == "UIPageControl"
        {
            
            var pageControl = UIPageControl(frame:CGRectMake(60.0, 120.0, 200.0, 200.0))
            pageControl.numberOfPages = 5
            pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
            pageControl.pageIndicatorTintColor = UIColor.redColor()
            self.view.addSubview(pageControl)
        }
        
        if self.title == "UIScrollView"{
            var scrollView = UIScrollView(frame:self.view.bounds)
            scrollView.pagingEnabled = true
            scrollView.showsVerticalScrollIndicator = false
            self.view.addSubview(scrollView)
            
            var k :CGFloat = 0.0
            for(var i = 0; i < 3; ++i){
                
                var view = UIView(frame:CGRectMake(k, 0.0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
                k += UIScreen.mainScreen().bounds.width
                view.backgroundColor = UIColor.redColor()
                scrollView.addSubview(view)
            }
            scrollView.contentSize = CGSizeMake(3 * UIScreen.mainScreen().bounds.width , UIScreen.mainScreen().bounds.height)
            self.view.addSubview(scrollView)
        }
        if self.title == "UISearchBar"{
            var searchBar = UISearchBar(frame:CGRectMake(10.0, 120.0, UIScreen.mainScreen().bounds.width-20, 30.0))
            searchBar.showsCancelButton = true
            searchBar.searchBarStyle = UISearchBarStyle.Minimal
            self.view.addSubview(searchBar)
        }

        if self.title == "UIToolbar"{
            var toolBar = UIToolbar(frame:CGRectMake(0, UIScreen.mainScreen().bounds.height-50,UIScreen.mainScreen().bounds.width , 50))
            
            var flexibleSpace = UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.FlexibleSpace, target:nil, action:nil)
            var barBtnItemA = UIBarButtonItem(title: "A", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            var barBtnItemB = UIBarButtonItem(title: "B", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            var barBtnItemC = UIBarButtonItem(title: "C", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            var barBtnItemD = UIBarButtonItem(title: "D", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            
            toolBar.items = [flexibleSpace, barBtnItemA, flexibleSpace, barBtnItemB, flexibleSpace, barBtnItemC, flexibleSpace, barBtnItemD, flexibleSpace]
            self.view.addSubview(toolBar)
        }

    }
    
    //UIPickerViewDataSource  
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return self.items!.count
    }
    //UIPickerViewDelegate
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return self.items?.objectAtIndex(row) as String
    }

    func btnAction(){
    
        var alert = UIAlertView(title: "Alert", message: "button事件", delegate: nil, cancelButtonTitle: "cancel", otherButtonTitles: "sure")
        alert.show()
        
    }
    
    
    func showActionSheet(){
        var action = UIActionSheet(title: "ActionSheet", delegate: nil, cancelButtonTitle: "cancel", destructiveButtonTitle: "sure")
        action.showInView(self.view)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    



}
