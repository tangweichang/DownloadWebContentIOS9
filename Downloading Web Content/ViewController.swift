//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by TangWeichang on 8/8/15.
//  Copyright © 2015 TangWeichang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://web.ics.purdue.edu/~tang236/")
        
        // Retrieve original website
        webView.loadRequest(NSURLRequest(URL: url!))
        
        
        // Retrieve html webContent without css and js
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            // Will happen when task completes
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
                
                
            } else {
                // Show error message
            }
            
            
            
            
        } // Open a browser and download the data
        
        task?.resume()
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

