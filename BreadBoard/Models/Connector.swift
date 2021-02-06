//
//  Connector.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/4/21.
//

import Foundation
enum ConnectorType: String {
    case power = ".power"
    case ground = ".ground"
}
struct Connector {
    let type: ConnectorType
}
extension Connector: Identifiable{
    var id: UUID {
        return UUID()
    }
}
