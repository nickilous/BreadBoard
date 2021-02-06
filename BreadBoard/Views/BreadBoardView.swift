//
//  BreadBoardView.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/6/21.
//

import SwiftUI
import Neumorphic

struct BreadBoardView: View {
    @State var breadBoard: Device = Device.mockData[0]
    
    var body: some View {
        VStack{
            Text(breadBoard.name)
            HStack{
                VStack{
                    ForEach(breadBoard.power){ connector in
                        ConnectorView(connector: connector)
                    }
                }
                VStack{
                    ForEach(breadBoard.ground){ connector in
                        ConnectorView(connector: connector)
                    }
                }
            }
        }
    }
}

struct BreadBoardView_Previews: PreviewProvider {
    static var previews: some View {
        BreadBoardView()
    }
}
