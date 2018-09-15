//
//  ViewController.swift
//  HelloWorld
//
//  Created by Prajnajiang on 9/1/18.
//  Copyright © 2018 Prajnajiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
//    var textColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundColor = view.backgroundColor
        
//        textColor = view.textColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor=UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text="Bye~"
        textLabel.text=textField.text
        textField.text=""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text="Hello from Tianyu!"
        view.backgroundColor = backgroundColor
    }
}

