//
//  ViewController.swift
//  SampleUIKit
//
//  Created by Anastasia Grey on 2023/10/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonClick(_ sender: Any) {
        print("Hello sasha")
        label.text = "Hi, sasha!"
    }
    
}

