//
//  FormFieldOption.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Foundation

struct FormFieldOption: Encodable {
	public let key: String
	public let label: String
	
	public init(key: String, label: String) {
		self.key = key
		self.label = label
	}
}
