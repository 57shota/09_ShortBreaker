//
//  ViewController.swift
//  09_Notification
//
//  Created by shota ito on 08/10/2018.
//  Copyright © 2018 shota ito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func action(_ sender: UIButton) {
        guard let text = textField.text else {return}
        guard let time = TimeInterval(text) else {return} // convert text(Strin) to TimeInterval(double)
        
        LocalPushManager.shared.sendLocalPush(in: time)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        LocalPushManager.shared.requestAuthorization()
        

        
    }


}

