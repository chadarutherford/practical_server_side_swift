//
//  UserModule.swift
//  
//
//  Created by Chad Rutherford on 7/1/20.
//

import Fluent
import Vapor

struct UserModule: Module {
    
    var router: RouteCollection? { UserRouter() }
    
    var migrations: [Migration] {
        [
            UserMigration_v1_0_0(),
        ]
    }
}
