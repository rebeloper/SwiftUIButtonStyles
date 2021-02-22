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
//            .font(.title)
//            .padding()
//            .background(Color.blue)
//            .foregroundColor(Color(.systemBackground))
//            .cornerRadius(8)
            .buttonStyle(RoundedCornersButtonStyle())
            
            Button("OK") {
                print("Tapped")
            }.buttonStyle(RoundedCornersButtonStyle(backgroundColor: Color(.systemBackground),
                                                    foregroundColor: .blue,
                                                    strokeColor: .blue,
                                                    cornerRadius: 14,
                                                    shadowRadius: 5))
            
            Button {
                print("Tapped")
            } label: {
                Label("Delete", systemImage: "trash")
            }.buttonStyle(RoundedCornersButtonStyle(backgroundColor: Color(.systemBackground),
                                                    foregroundColor: .red,
                                                    strokeColor: .red,
                                                    pressedAnimation: .none))
            
            Button {
                print("Tapped")
            } label: {
                HStack {
                    Text("Fast Forward")
                    Image(systemName: "chevron.forward.2")
                        .foregroundColor(.black)
                }
            }.buttonStyle(RoundedCornersButtonStyle(font: .title, padding: CGPoint(x: 24, y: 12), backgroundColor: .orange, foregroundColor: Color(.systemBackground), strokeLineWidth: 0, depthColor: Color("DarkOrange"), pressedAnimation: .scale(scale: 0.95)))
            
            Button {
                print("Tapped")
            } label: {
                VStack {
                    Image(systemName: "paperplane.fill")
                        .font(.title)
                    Text("Send")
                }
            }.buttonStyle(RoundedCornersButtonStyle(backgroundColor: Color(.systemBackground),
                                                    foregroundColor: .green,
                                                    strokeColor: .green,
                                                    strokeLineWidth: 5))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
