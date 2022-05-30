//
//  Vc.swift
//  KeyChain
//
//  Created by manjunath on 29/05/22.
//

import UIKit

class Vc: UIViewController {

    let notificationCenter = NotificationCenter.default

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2. Custom Notification - Register and Observe for changes
        let notificationName = Notification.Name("name") // 2a. Name
        notificationCenter.addObserver(self, // 2b. Observer will attach to this class
                                       selector: #selector(myMethod(_:)), // 2c. Method what will be called if Notification triggers
                                       name: notificationName, // 2d. Name of the Notification to know to Identify the message
                                       object: nil)
    }
    
    @objc func myMethod(_ notification: NSNotification) {
        // 3. The call
        // 3a. In case the message is passing some data it is in 'notification.userInfo'
        view.backgroundColor = UIColor.red
        print("Local notification")
    }
    
    @IBAction func faction(_ sender: Any) {
      
        let notificationName = Notification.Name("NotificationName")

        // 2. Broadcast the Notification with name, not passing any data
        notificationCenter.post(name: notificationName, object: nil, userInfo: nil)
       
//               self.navigationController?.popViewController(animated: true)
       
    }
    
  
    @IBAction func taction(_ sender: Any) {
       
        let notificationName = Notification.Name("NotificationName")

        // 2. Broadcast the Notification with name, not passing any data
        notificationCenter.post(name: notificationName, object: nil, userInfo: nil)
        
//               self.navigationController?.popViewController(animated: true)
    }
    
}
