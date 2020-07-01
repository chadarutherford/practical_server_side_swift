//
//  BlogRouter.swift
//  
//
//  Created by Chad Rutherford on 6/29/20.
//

import Vapor

struct BlogRouter: RouteCollection {
	let controller = BlogFrontendController()
	func boot(routes: RoutesBuilder) throws {
		routes.get("blog", use: self.controller.blogView)
		routes.get(.anything, use: self.controller.postView)
	}
}
