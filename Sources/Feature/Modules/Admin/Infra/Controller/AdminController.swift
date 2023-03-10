//
//  AdminController.swift
//  
//
//  Created by Rodrigo Souza on 07/03/23.
//

import Foundation
import Vapor


public func routesAdmin(_ app: Application) throws {
    try app.register(collection: AdminController())
}

struct AdminController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let router = routes.grouped("admin")
        router.get(use: index)
    }

    func index(req: Request) async throws -> [Admin] {
        return await execute(of: req, with: .list)
    }
    
    

}
