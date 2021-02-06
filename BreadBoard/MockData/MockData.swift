//
//  MockData.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/6/21.
//

import Foundation

extension Device {

    static var mockData: [Device] = {
        var breadBoard = Device(name: "BreadBoard")
        for index in 1...8{
            let connector = Connector(type: .power)
            breadBoard.addPowerConnector(connector: connector)
        }
        for index in 1...8{
            let connector = Connector(type: .ground)
            breadBoard.addGroundConnector(connector: connector)
        }
        return  [
            breadBoard
        ]
    }()
}
