//
//  Module.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

protocol Module {
	var router: RouteCollection? { get }
	var migrations: [Migration] { get }
	
	func configure(_ app: Application) throws
}

extension Module {
	var router: RouteCollection? { nil }
	var migrations: [Migration] { [] }
	
	func configure(_ app: Application) throws {
		for migration in self.migrations {
			app.migrations.add(migration)
		}
		if let router = self.router {
			try router.boot(routes: app.routes)
		}
	}
}
