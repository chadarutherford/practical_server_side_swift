//
//  BlogPostAdminController.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

struct BlogPostAdminController {
	func listView(req: Request) throws -> EventLoopFuture<View> {
		struct Context<T: Encodable>: Encodable {
			let list: [T]
		}
		return BlogPostModel.query(on: req.db)
			.all()
			.mapEach(\.viewContext)
			.flatMap { req.view.render("Blog/Admin/Posts/List", Context(list: $0)) }
	}
}
