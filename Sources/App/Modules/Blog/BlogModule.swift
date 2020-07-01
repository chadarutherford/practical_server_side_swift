//
//  BlogModule.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

struct BlogModule: Module {
	var router: RouteCollection? {
		BlogRouter()
	}
	
	var migrations: [Migration] {
		[
			BlogMigration_v1_0_0(),
			BlogMigrationSeed(),
		]
	}
}
