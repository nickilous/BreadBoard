//
//  ConnectorView.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/6/21.
//

import SwiftUI

struct ConnectorView: View {
    @State var connector: Connector
    var body: some View {
        Text(connector.type.rawValue)
    }
}

struct ConnectorView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectorView(connector: Connector(type: .power))
    }
}
