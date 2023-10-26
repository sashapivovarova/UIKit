//
//  ViewController.swift
//  SampleUIKit
//
//  Created by Anastasia Grey on 2023/10/25.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.titleLabel?.text = "Click!"
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        print("Hello sasha")
        label.text = "Hi, sasha!"
    }
    
}

