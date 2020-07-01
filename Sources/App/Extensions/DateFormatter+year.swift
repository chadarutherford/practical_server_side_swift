//
//  DateFormatter+year.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Foundation

extension DateFormatter {
	static var year: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "y"
		return formatter
	}()
}
