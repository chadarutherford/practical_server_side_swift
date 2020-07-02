//
//  Contexts.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Foundation

struct ListContext<T: Encodable>: Encodable {
	let list: [T]
	
	init(_ list: [T]) {
		self.list = list
	}
}

struct EditContext<T: Encodable>: Encodable {
	let edit: T
	
	init(_ edit: T) {
		self.edit = edit
	}
}
