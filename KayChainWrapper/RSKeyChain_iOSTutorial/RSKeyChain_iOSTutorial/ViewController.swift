//
//  ViewController.swift
//  RSKeyChain_iOSTutorial
//
//  Created by Rohit Singh on 14/03/16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /**
     View Life Cycle Method
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let isSaved:Bool = KeychainWrapper.setString("Rohit Singh", forKey: "userName")
        if isSaved == true{
            print("saved")
            
        } else{
            print("not saved")
        }
        
        let userName: String? =   KeychainWrapper.stringForKey("userName")
        print(userName!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

