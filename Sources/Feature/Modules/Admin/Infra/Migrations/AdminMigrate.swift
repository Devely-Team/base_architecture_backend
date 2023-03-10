//
//  AdminMigrate.swift
//  
//
//  Created by Rodrigo Souza on 07/03/23.
//

import Fluent

struct CreateAdminMigrate: AsyncMigration {
    
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("Admin")
            .id()
            .create()
    }
    
    func revert(on database: FluentKit.Database) async throws {
        try await database.schema("Admin").delete()
    }
    
}
