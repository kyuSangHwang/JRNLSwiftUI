//
//  ContentView.swift
//  JRNLSwiftUI
//
//  Created by 황규상 on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "face.smiling")
                .resizable()
                .frame(width: 90, height: 90)
            VStack {
                Text("2024.05.28")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("날씨 죽인다 행배야")
                    .font(.title2)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
