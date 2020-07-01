//
//  BlogRouter.swift
//  
//
//  Created by Chad Rutherford on 6/29/20.
//

import Vapor

struct BlogRouter: RouteCollection {
	let frontendController = BlogFrontendController()
	let adminController = BlogPostAdminController()
	
	func boot(routes: RoutesBuilder) throws {
		routes.get("blog", use: self.frontendController.blogView)
		routes.get(.anything, use: self.frontendController.postView)
		routes.grouped([
			UserModelSessionAuthenticator(),
			// UserModel.guardMiddleware(),
			UserModel.redirectMiddleware(path: "/")
		])
		.grouped("admin", "blog")
			.get("posts", use: self.adminController.listView)
	}
}
