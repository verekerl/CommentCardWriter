//
//  DestinationView.swift
//  CommentCardWriter
//
//  Created by Vereker, Luke (PRKB) on 03/03/2023.
//

import SwiftUI

struct DestinationView: View {
    var body: some View {
        Form {
            Section(header: Text("Bob")) {
                Text("Hello, World!")
            }
        }
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView()
    }
}
