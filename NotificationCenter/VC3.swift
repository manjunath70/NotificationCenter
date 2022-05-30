//
//  Vc2.swift
//  KeyChain
//
//  Created by manjunath on 29/05/22.
//

import UIKit

class VC3: UIViewController {

    @IBOutlet weak var label: UILabel!
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
    
}
