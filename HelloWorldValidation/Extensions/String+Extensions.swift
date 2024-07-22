//
//  String+Extensions.swift
//  HelloWorldValidation
//
//  Created by sade on 7/22/24.
//

import Foundation

extension String {

  var isValidEmail: Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
    return predicate.evaluate(with: self)
  }

}
