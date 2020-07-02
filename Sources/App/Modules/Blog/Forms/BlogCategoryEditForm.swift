//
//  BlogCategoryEditForm.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Vapor

final class BlogCategoryEditForm: Form {
	
	typealias Model = BlogCategoryModel
	
	struct Input: Decodable {
		var id: String
		var title: String
	}
	
	var id: String? = nil
	var title = BasicFormField()
	
	init() { }
	
	init(req: Request) throws {
		let context = try req.content.decode(Input.self)
		if !context.id.isEmpty {
			self.id = context.id
		}
		
		self.title.value = context.title
	}
	
	func write(to model: BlogCategoryModel) {
		model.title = self.title.value
	}
	
	func read(from model: BlogCategoryModel) {
		self.id = model.id!.uuidString
		self.title.value = model.title
	}
	
	func validate(req: Request) -> EventLoopFuture<Bool> {
		var valid = true
		if self.title.value.isEmpty {
			self.title.error = "Title is required"
			valid = false
		}
		return req.eventLoop.future(valid)
	}
}