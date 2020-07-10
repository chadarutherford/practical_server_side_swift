//
//  GetContentController.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Fluent
import Vapor

protocol GetContentController: IdentifiableContentController where Model: GetContentRepresentable {
	func get(_: Request) throws -> EventLoopFuture<Model.GetContent>
	func setupGetRoute(routes: RoutesBuilder)
}

extension GetContentController {
	func get(_ req: Request) throws -> EventLoopFuture<Model.GetContent> {
		try self.find(req).map(\.getContent)
	}
	
	func setupGetRoute(routes: RoutesBuilder) {
		routes.get(self.idPathComponent, use: self.get)
	}
}
