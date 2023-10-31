//
//  ViewController.swift
//  SampleUIKit
//
//  Created by Anastasia Grey on 2023/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var names: [String] = ["Sasha", "Victory", "Min"]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        names.append(nameTextField.text ?? "empty")
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            
            let cell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: cell)
            let index = indexPath?.row ?? 0
            let detailView = segue.destination as! DetailViewController
            detailView.setLabel(with: names[index])
           
            if index == 0 {
                detailView.view.backgroundColor = .systemPink
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return UISwipeActionsConfiguration(actions: [UIContextualAction(style: .destructive, title: "Delete", handler: { _,_,_ in })])
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return UISwipeActionsConfiguration(actions: [UIContextualAction(style: .normal, title: "Edit", handler: { _,_,_ in })])
    }
}
