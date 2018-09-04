//
//  ViewController.swift
//  IOS-Swift-PlistReadAndWrite
//
//  Created by Pooya on 2018-09-03.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueField: UITextField!
    @IBOutlet weak var msgView: UILabel!
    
    var plistHelepr = PlistManagment()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        msgView.text = "Message : try to read from Options.plist"
    }

    @IBAction func readAct(_ sender: Any) {
        let dataVersion = plistHelepr.readPlist(namePlist: "Options", key: "dataVersion")
        valueField?.text = dataVersion as? String
        msgView.text = "Message : Read Done(\(dataVersion))"
    }
    
    @IBAction func writeAct(_ sender: Any) {
        plistHelepr.writePlist(namePlist: "Options", key: "dataVersion", data: valueField?.text as AnyObject)
        msgView.text = "Message : Write Done(\(valueField?.text as AnyObject))"
    }
    
    
}

