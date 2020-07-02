//
//  UtilityModule.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Fluent
import Vapor

struct UtilityModule: Module {
	static var name: String = "utility"
	
	var commandGroup: CommandGroup? {
		UtilityCommandGroup()
	}
}
