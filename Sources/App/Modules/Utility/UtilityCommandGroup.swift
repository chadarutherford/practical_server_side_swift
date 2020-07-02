//
//  UtilityCommandGroup.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Vapor

struct UtilityCommandGroup: CommandGroup {
	let commands: [String : AnyCommand]
	let help: String
	
	var defaultCommand: AnyCommand? {
		self.commands[UtilityFileTransferCommand.name]
	}
	
	init() {
		self.help = "Various utility tools"
		
		self.commands = [
			UtilityFileTransferCommand.name:
			UtilityFileTransferCommand(),
		]
	}
}
