//
//  GetContentRepresentable.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Vapor

protocol GetContentRepresentable {
	associatedtype GetContent: Content
	
	var getContent: GetContent { get }
}
