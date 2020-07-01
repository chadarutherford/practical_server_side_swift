//
//  FrontendRouter.swift
//  
//
//  Created by Chad Rutherford on 6/29/20.
//

import Vapor

struct FrontendRouter: RouteCollection {
    
    let controller = FrontendController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.grouped(UserModelSessionAuthenticator())
            .get(use: self.controller.homeView)
    }

}
