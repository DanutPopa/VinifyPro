//
//  String+EXT.swift
//  VinifyPro
//
//  Created by Danut Popa on 21.05.2024.
//

import Foundation

extension String {
  var isEmptyOrWhiteSpace: Bool {
    self.isEmpty || self.contains(" ")
  }

  var isEmailValid: Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
    return predicate.evaluate(with: self)
  }
}
