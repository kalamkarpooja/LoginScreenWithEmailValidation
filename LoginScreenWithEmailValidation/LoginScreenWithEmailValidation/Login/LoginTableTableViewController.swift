//
//  LoginTableTableViewController.swift
//  LoginScreenWithEmailValidation
//
//  Created by Mac on 03/04/23.
//

import UIKit

class LoginTableTableViewController: UITableViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
    @IBAction func loginBtn(_ sender: UIButton) {
        validationCode()
        }
    }
    extension LoginTableTableViewController{
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            let tableviewHeight = self.tableView.frame.height
            let contentHeight = self.tableView.contentSize.height
            let centeringInset = (tableviewHeight - contentHeight) / 2.0
            let topInset = max(centeringInset,0.0)
            self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
        }
  }
    extension LoginTableTableViewController{
      fileprivate func validationCode() {
         if let email = emailTextField.text,let password = passwordTextField.text{
            if email == ""{
                openAlert(title: "Alert", message: "Email Address not found", alertStyle: .alert, actionTitles: ["okay"], actionStyle: [.default], actions: [{_ in
                    print("okay clicked")
                }])
            }else if password.validatePassword(){
                openAlert(title: "Alert", message: "Enter valid Password", alertStyle: .alert, actionTitles: ["okay"], actionStyle: [.default], actions: [{_ in
                    print("okay clicked")
                }])
            }
            if email.validateEmailId(){
                openAlert(title: "Alert", message: "Enter Valid Email", alertStyle: .alert, actionTitles: ["okay"], actionStyle: [.default], actions: [{_ in
                    print("okay clicked")
                }])
            }else if password.validatePassword(){
                openAlert(title: "Alert", message: "Please Enter valid password", alertStyle: .alert, actionTitles: ["okay"], actionStyle: [.default], actions: [{_ in
                    print("okay clicked")
                }])
            }else{
                //navigation - home screen
                
            }
        }else{
            openAlert(title: "Alert", message: "please add detail", alertStyle: .alert, actionTitles: ["okay"], actionStyle: [.default], actions: [{_ in
                print("okay clicked")
            }])
        }
    }
}
