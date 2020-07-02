//
//  FrontendModule.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

struct FrontendModule: Module {
	static var name: String = "frontend"
	
	var router: RouteCollection? {
		FrontendRouter()
	}
}
