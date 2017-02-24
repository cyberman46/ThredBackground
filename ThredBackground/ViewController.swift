//
//  ViewController.swift
//  ThredBackground
//
//  Created by Akekapon Suebprom on 2/24/2560 BE.
//  Copyright © 2560 kratostracking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ViewController.didLoadCheckBackground), userInfo: nil , repeats: true)
        
        
    }
    
    func didLoadCheckBackground(){
    
        let state: UIApplicationState = UIApplication.shared.applicationState

        
        if state == .background {
            
            print("in background")
        }
        else if state == .active {
            
            print("in active")
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

