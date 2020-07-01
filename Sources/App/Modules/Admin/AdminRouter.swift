//
//  AdminRouter.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Vapor

struct AdminRouter: RouteCollection {
	let controller = AdminController()
	func boot(routes: RoutesBuilder) throws {
		routes.grouped(UserModelSessionAuthenticator())
			.get("admin", use: self.controller.homeView)
	}
}
