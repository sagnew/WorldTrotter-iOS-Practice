//
//  WebViewController.swift
//  WorldTrotter
//
//  Created by Sam Agnew on 1/19/16.
//  Copyright © 2016 Sam Agnew. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet var containerView : UIView! = nil
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string:"http://www.bignerdranch.com/")
        let req = NSURLRequest(URL:url!)
        self.webView!.loadRequest(req)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
