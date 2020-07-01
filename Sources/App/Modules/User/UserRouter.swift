//
//  UserRouter.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Vapor

struct UserRouter: RouteCollection {
	let controller = UserFrontendController()
	func boot(routes: RoutesBuilder) throws {
		
	}
}
