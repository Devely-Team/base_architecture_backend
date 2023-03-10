//
//  File.swift
//  
//
//  Created by Rodrigo Souza on 09/03/23.
//

import Foundation
import Vapor

struct UseCase<Context> {
    let execute: (_ req: Request) async -> Context
}

func execute<Context>(of req: Request, with command: UseCase<Context>) async -> Context {
    return await command.execute(req)
}
