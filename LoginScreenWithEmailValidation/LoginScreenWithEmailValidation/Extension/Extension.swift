//
//  Extension.swift
//  LoginScreenWithEmailValidation
//
//  Created by Mac on 28/03/23.
//

import Foundation
import UIKit
extension UIViewController {
       func openAlert(title: String?,
                      message: String?,
                      alertStyle: UIAlertController.Style,
                      actionTitles:[String?],
                      actionStyle:[UIAlertAction.Style],
                      actions:[((UIAlertAction) -> Void)?]) {
              let alertController = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
              for (index, title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: actionStyle[index], handler: actions[index])
                   alertController.addAction(action)
              }
              self.present(alertController, animated: true, completion: nil)
         }
    }
