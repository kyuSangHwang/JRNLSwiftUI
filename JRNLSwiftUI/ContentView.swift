//
//  ContentView.swift
//  JRNLSwiftUI
//
//  Created by 황규상 on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    var journalEntries: [JournalEntry] = testData
    
    var body: some View {
        List(journalEntries) { journalEntry in
            VStack {
                HStack {
                    Image(uiImage: journalEntry.photo ?? UIImage(systemName: "face.smiling")!)
                        .resizable()
                        .frame(width: 90, height: 90)
                    VStack {
                        Text(journalEntry.date.formatted(.dateTime.year().month().day()))
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(journalEntry.entryTitle)
                            .font(.title2)
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
