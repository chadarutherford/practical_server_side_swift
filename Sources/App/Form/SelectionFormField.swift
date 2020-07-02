//
//  SelectionFormField.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Foundation

protocol FormFieldOptionRepresentable {
	var formFieldOption: FormFieldOption { get }
}

struct SelectionFormField: Encodable {
	var value: String = ""
	var error: String? = nil
	var options = [FormFieldOption]()
}
