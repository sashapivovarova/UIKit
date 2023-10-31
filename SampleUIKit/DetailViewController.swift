//
//  DetailViewController.swift
//  SampleUIKit
//
//  Created by Anastasia Grey on 2023/10/31.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var myNameLabel: UILabel!
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        myNameLabel.text = myName
    }
    
    func setLabel(with text: String) {
        myName = text
    }
}
