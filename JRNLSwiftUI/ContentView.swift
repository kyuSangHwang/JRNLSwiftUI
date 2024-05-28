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
        NavigationStack {
            List(journalEntries) { journalEntry in
                JournalCell(journalEntry: journalEntry)
            }
            .navigationTitle("Journal List")
            .navigationDestination(for: JournalEntry.self) { JournalEntry in
                Text(JournalEntry.entryTitle)
            }
        }
    }
}

struct JournalCell: View {
    var journalEntry: JournalEntry
    
    var body: some View {
        NavigationLink(value: journalEntry) {
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
