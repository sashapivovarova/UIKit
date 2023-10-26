//
//  ViewController.swift
//  SampleUIKit
//
//  Created by Anastasia Grey on 2023/10/25.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        print("Hello sasha")
        label.text = "Hi, sasha!"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
    }
    
}

