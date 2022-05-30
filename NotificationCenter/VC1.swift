//
//  ViewController.swift
//  NotificationCenter
//
//  Created by manjunath on 30/05/22.
//

import UIKit

class VC1: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
  
    @IBAction func action(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("name"), object: nil)
        view.backgroundColor = UIColor.red
    }
    
}

