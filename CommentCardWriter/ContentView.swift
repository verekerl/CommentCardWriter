//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Vereker, Luke (PRKB) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Comment Card Generator")
            Button("Generate Comment", action: {
                print("")
            })
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
