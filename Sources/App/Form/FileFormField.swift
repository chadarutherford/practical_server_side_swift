//
//  FileFormField.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Foundation

struct FileFormField: Encodable {
	var value: String = ""
	var error: String? = nil
	var data: Data? = nil
	var delete: Bool = false
}
