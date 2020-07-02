//
//  Form.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Fluent
import Vapor

protocol Form: Encodable {
	associatedtype Model: Fluent.Model
	
	var id: String? { get set }
	
	init()
	init(req: Request) throws
	
	func write(to: Model)
	func read(from: Model)
	func validate(req: Request) -> EventLoopFuture<Bool>
}
