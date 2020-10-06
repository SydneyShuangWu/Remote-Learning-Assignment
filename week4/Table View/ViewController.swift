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
    
    // To set dynamic row height
    table.rowHeight = UITableView.automaticDimension
    table.estimatedRowHeight = 100
  }

  // To display 10 rows
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  // Configure the cell to show data
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    if let label = cell.viewWithTag(1000) as? UILabel {
      if indexPath.row == 0 {
        label.text = "This is section 0, row 0"
      } else if indexPath.row == 1 {
        label.text = "This is section 0, row 1"
      } else if indexPath.row == 2 {
        label.text = "This is section 0, row 2"
      } else if indexPath.row == 3 {
        label.text = "This is section 0, row 3"
      } else if indexPath.row == 4 {
        label.text = "This is section 0, row 4"
      } else if indexPath.row == 5 {
        label.text = "This is section 0, row 5"
      } else if indexPath.row == 6 {
        label.text = "This is section 0, row 6"
      } else if indexPath.row == 7 {
        label.text = "This is section 0, row 7"
      } else if indexPath.row == 8 {
        label.text = "This is section 0, row 8"
      } else if indexPath.row == 9 {
        label.text = "This is section 0, row 9"
      }
    }
    return cell
  }

  
}

