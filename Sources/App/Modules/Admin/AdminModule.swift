//
//  AdminModule.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

struct AdminModule: Module {
	static var name: String = "admin"
	
	var router: RouteCollection? { AdminRouter() }
}
