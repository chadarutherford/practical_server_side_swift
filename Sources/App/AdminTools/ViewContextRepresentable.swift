//
//  ViewContextRepresentable.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Foundation

public protocol ViewContextRepresentable {
	associatedtype ViewContext: Encodable
	
	var viewContext: ViewContext { get }
	var viewIdentifier: String { get }
}
