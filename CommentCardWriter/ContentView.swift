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
    @State private var comment: String = "Hello"
    let subjects: [String] = ["Comp Sci", "Economics", "Maths", "Physics"]
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {}) {
                Image(systemName: "arrow.backward")
            }
            Text("Comment Card Generator")
                .font(.title)
                .fontWeight(.bold)
                .padding(25)
            Spacer()
            Slider(value: $happiness, in: 0...10)
                .frame(width: 300, height: 50.0)
            Picker("Please pick subject", selection: $selectedSubject) {
                ForEach(subjects, id: \.self) {
                    Text($0)
                }
            }
            Button("Generate Comment", action: {
                print(comment)
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
