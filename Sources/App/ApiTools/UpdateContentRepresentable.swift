//
//  UpdateContentRepresentable.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Vapor

protocol UpdateContentRepresentable: GetContentRepresentable {
	associatedtype UpdateContent: ValidatableContent
	func update(_: UpdateContent) throws
}

extension UpdateContentRepresentable {
	func update(_: UpdateContent) throws {}
}
