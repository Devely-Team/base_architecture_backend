//
//  File.swift
//  
//
//  Created by Rodrigo Souza on 09/03/23.
//

import Foundation
import Vapor

/// This application is start here🏃‍♂️
/// - throws:
///  See `ApplicationUseCase.initialize()` and `ApplicationUseCase.launch()`
public func bootstrap() throws {
    do {
        var env = try Environment.detect()
        try LoggingSystem.bootstrap(from: &env)
        
        let app = Application(env)
        defer { app.shutdown() }
        
        app.logger.info("Server starting ..")
        
        try configure(app)
        try app.run()

    } catch let error {
        print(error.localizedDescription)
        exit(1)
    }
}
