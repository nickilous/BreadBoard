//
//  WorkSpace.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/4/21.
//

import Foundation

class WorkSpace: ObservableObject{
    @Published var devices: [Device] = [Device]()
}
extension WorkSpace{
    func addDevice(device: Device){
        devices.append(device)
    }
}
