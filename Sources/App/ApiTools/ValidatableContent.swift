//
//  ValidatableContent.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Vapor

protocol ValidatableContent: Content, Validatable {
	
}

extension ValidatableContent {
	static func validations(_ validations: inout Validations) {}
}
