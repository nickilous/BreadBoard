//
//  Device.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/4/21.
//

import Foundation
struct Device{
    let name: String
    var power: [Connector] = [Connector]()
    var ground: [Connector] = [Connector]()
}
extension Device: Identifiable{
    var id: UUID {
        return UUID()
    }
}
extension Device {
    mutating func addPowerConnector(connector: Connector){
        power.append(connector)
    }
    mutating func addGroundConnector(connector: Connector){
        ground.append(connector)
    }
}
