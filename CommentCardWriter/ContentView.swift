//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Vereker, Luke (PRKB) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedSubject: String = ""
    @State private var happiness: Double = 5
    @State private var comment: String = ""
    let subjects: [String] = ["CComX-1 - DPC","CComX-1 - MC","CEcoV-3 - MH","CEcoV-3 - RGC", "CMsiW-2 - DWBA", "CPhyZ-3 - PHM", "COpt4-29 - MNF"]
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Comment Card Generator")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(25)
                Spacer()
                Picker("Please pick subject", selection: $selectedSubject) {
                    ForEach(subjects, id: \.self) {
                        Text($0)
                    }
                }
                Slider(value: $happiness, in: 0...10)
                    .frame(width: 300, height: 50.0)
                Button("Generate Comment", action: {
                    let commentGenerator = CommentGenerator()
                    comment = commentGenerator.generateComment(happiness: happiness)
                })
                Text("\(comment)")
                Spacer()
                NavigationLink("Save") {
                    DestinationView()
                }
                Spacer()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
