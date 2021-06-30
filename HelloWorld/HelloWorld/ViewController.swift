//
//  ViewController.swift
//  HelloWorld
//
//  Created by 정석환 on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    // label variable
    @IBOutlet var lblHello: UILabel!
    
    // text field variable
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Send button 눌렀을 때
    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

