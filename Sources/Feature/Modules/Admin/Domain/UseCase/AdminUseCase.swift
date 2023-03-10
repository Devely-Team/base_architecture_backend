//
//  AdminCommand.swift
//  
//
//  Created by Rodrigo Souza on 07/03/23.
//

import Foundation
import Vapor

extension UseCase where Context == Admin {
    static let create = Self { request in
        return Admin()
    }
    
    static let update = Self { request in
        return Admin()
    }
    
    static let findById = Self { request in
        return Admin()
    }
    
}

extension UseCase where Context == [Admin] {
    static let list = Self { request in
        return [Admin(), Admin(), Admin()]
    }
    
    static let findMany = Self { request in
        return [Admin(), Admin()]
    }
}
