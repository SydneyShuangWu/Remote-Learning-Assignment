//
//  ViewController.swift
//  Table View
//
//  Created by Jovan ho on 2020/10/5.
//

import UIKit


class TableViewController: UITableViewController {
  @IBOutlet weak var table: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // To display 10 rows
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  // Configure the cell to show data
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    if let label = cell.viewWithTag(1000) as? UILabel {
      label.text = "This is section \(indexPath.section), row \(indexPath.row)"
    }
    return cell
  }
  
  // To set dynamic row height
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     return 100
  }

  
}

