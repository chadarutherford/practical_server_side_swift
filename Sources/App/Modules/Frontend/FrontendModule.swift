//
//  FrontendModule.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

struct FrontendModule: Module {
	var router: RouteCollection? {
		FrontendRouter()
	}
}
