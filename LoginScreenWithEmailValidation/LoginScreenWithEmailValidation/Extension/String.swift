//
//  String.swift
//  LoginScreenWithEmailValidation
//
//  Created by Mac on 28/03/23.
//

import Foundation
extension String{
    func validateEmailId() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0--9.-]+\\.[A-Za-z]{2,4}"
        return applyPredicateOnRegex(regexStr: emailRegEx)
    }
    func validatePassword(mini : Int = 8,max: Int = 8) -> Bool{
        var passRegEx = "pooja1312"
        if mini >= max{
            passRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{\(mini),}$"
        }else{
        passRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{\(mini),\(max)}$"
        }
        return  applyPredicateOnRegex(regexStr: passRegEx)
    }
    func  applyPredicateOnRegex(regexStr: String) -> Bool{
        let trimedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimedString)
        return isValidateOtherString
        
    }
}
