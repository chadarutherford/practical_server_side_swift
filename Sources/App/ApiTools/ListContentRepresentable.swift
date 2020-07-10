//
//  ListContentRepresentable.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Vapor

protocol ListContentRepresentable {
	associatedtype ListItem: Content
	
	var listContent: ListItem { get }
}
