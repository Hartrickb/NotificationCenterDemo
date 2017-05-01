//
//  ViewController.swift
//  NotificationCenterDemo
//
//  Created by Bennett Hartrick on 5/1/17.
//  Copyright © 2017 Bennett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Register to listen for a notification
        NotificationCenter.default.addObserver(self, selector: #selector(dataDownloaded(n:)), name: NSNotification.Name.init("DataDownloaded"), object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dataDownloaded(n: NSNotification) {
        print("triggered")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: NSNotification.Name.init("DataDownloaded"), object: nil)
        
    }

}
















