//
//  ViewController.swift
//  Register Page
//
//  Created by Jovan ho on 2020/10/1.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  @IBOutlet weak var checkLabel: UILabel!
  @IBOutlet weak var accountField: UITextField!
  @IBOutlet weak var passwordField: UITextField!
  @IBOutlet weak var checkField: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    checkField.isUserInteractionEnabled = false
    checkLabel.textColor = .gray
    checkField.backgroundColor = .gray
    
  }

  func changeInterface(_ index: Int) {
    switch index {
    case 0:
      // To change the color of the check label to gray
      checkLabel.textColor = .gray
      // To change the background color of the text field to dark gray
      checkField.backgroundColor = .gray
      // To disable the text field
      checkField.isUserInteractionEnabled = false
      
    case 1:
      // To change the color of the check label to black
      checkLabel.textColor = .black
      // To change the color of the text field to white
      checkField.backgroundColor = .white
      // To ensable the text field
      checkField.isUserInteractionEnabled = true
      
    default:
      break
    }
  }
  
  
  @IBAction func indexChanged(_ sender: UISegmentedControl) {
    changeInterface(segmentedControl.selectedSegmentIndex)
  }
  
  
  @IBAction func showAlert() {
    
    var title = "Error"
    var message = ""
    
    // Log in mode
    if segmentedControl.selectedSegmentIndex == 0 {
      if accountField.text != "appworks_school@gmail.com" // Invalid account
          || passwordField.text != "1234" { // Invalid password
        message = "Login fail"
      } else {
        title = "Login succeed"
      }
    }
  
    // Sign up mode
    if segmentedControl.selectedSegmentIndex == 1 {
      if accountField.text?.isEmpty ?? true { // Empty account
        message = "Account should not be empty."
      } else if passwordField.text?.isEmpty ?? true { // Empty password
        message = "Password should not be empty."
      } else if checkField.text?.isEmpty ?? true { // Empty check password
        message = "Check Password should not be empty."
      } else if passwordField.text == checkField.text { // Password match
        title = "Signup succeed"
      } else {
        message = "Signup fail"
      }
    }

    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

    let action = UIAlertAction(title: "OK", style: .default, handler: { action in })

    alert.addAction(action)

    present(alert, animated: true, completion: nil)
    
  }
  
}

