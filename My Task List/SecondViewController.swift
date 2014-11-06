//
//  SecondViewController.swift
//  My Task List
//
//  Created by Vadim Timchuker on 04.11.14.
//  Copyright (c) 2014 Vadim Timchuker. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Button click event
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(txtTask.text, desk: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    // ios touch func
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        
        
        return true
    }

}

