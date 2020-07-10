//
//  CreateContentRepresentable.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Vapor

protocol CreateContentRepresentable: GetContentRepresentable {
	associatedtype CreateContent: ValidatableContent
	func create(_: CreateContent) throws
}

extension CreateContentRepresentable {
	func create(_: CreateContent) throws {}
}
