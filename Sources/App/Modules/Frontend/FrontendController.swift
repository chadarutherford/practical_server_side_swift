//
//  FrontendController.swift
//  
//
//  Created by Chad Rutherford on 6/29/20.
//

import Vapor

struct FrontendController {
	func homeView(req: Request) throws -> EventLoopFuture<View> {
		struct Context: Encodable {
			let title: String
			let header: String
			let message: String
		}
		
		let context = Context(title: "myPage", header: "Hi there,", message: "welcome to my awesome page!")
		return req.view.render("home", context)
	}
}
