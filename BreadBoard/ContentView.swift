//
//  ContentView.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/4/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @ObservedObject var workspace: WorkSpace = WorkSpace()

    var body: some View {
        VStack{
            ForEach(workspace.devices){ device in
                BreadBoardView(breadBoard: device)
            }
            Button(action: {
                let device = Device.mockData[0]
                workspace.addDevice(device: device)
            }, label: {
                Text("Add Device")
            })
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
