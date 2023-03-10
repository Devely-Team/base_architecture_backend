//
//  Admin.swift
//  
//
//  Created by Rodrigo Souza on 07/03/23.
//


import Fluent
import Vapor

final class Admin: Model, Content {
    
    static let schema = "Admin"
    
    @ID(key: .id)
    var id: UUID?
    
    // When this Admin was created.
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    
    // When this Admin was last updated.
    @Timestamp(key: "updated_at", on: .update)
    var updatedAt: Date?
    
    init() { }

}
