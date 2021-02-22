//
//  ContentView.swift
//  Shared
//
//  Created by Alex Nagy on 22.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 18) {
            Button("Cancel") {
                print("Tapped")
            }
            
            Button("OK") {
                print("Tapped")
            }
            
            Button {
                print("Tapped")
            } label: {
                Label("Delete", systemImage: "trash")
            }
            
            Button {
                print("Tapped")
            } label: {
                HStack {
                    Text("Fast Forward")
                    Image(systemName: "chevron.forward.2")
                }
            }
            
            Button {
                print("Tapped")
            } label: {
                VStack {
                    Image(systemName: "paperplane.fill")
                        .font(.title)
                    Text("Send")
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
