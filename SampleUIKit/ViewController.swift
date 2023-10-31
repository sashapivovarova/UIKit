//
//  ViewController.swift
//  SampleUIKit
//
//  Created by Anastasia Grey on 2023/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "Start"
        } else {
            cell.textLabel?.text = "Hello, Sasha!"
        }
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            print("This row is 0")
        } else {
            print(indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    
    
}
