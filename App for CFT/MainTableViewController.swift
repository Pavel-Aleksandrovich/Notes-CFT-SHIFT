//
//  MainTableViewController.swift
//  App for CFT
//
//  Created by pavel mishanin on 27.09.2021.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let identifireCell = "cell"
    let heightForRow = 85
    let notes = ["Балкан Гриль", "Бочка"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifireCell, for: indexPath)
        cell.textLabel?.text = notes[indexPath.row]
        cell.imageView?.image = UIImage(named: notes[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true

        

        return cell
    }
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
   
}
