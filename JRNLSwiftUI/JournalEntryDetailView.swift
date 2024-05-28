//
//  JournalEntryDetailView.swift
//  JRNLSwiftUI
//
//  Created by 황규상 on 5/28/24.
//

import SwiftUI
struct JournalEntryDetailView: View {
    var selectedJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                    .frame(height: 30)
                
                Text(selectedJournalEntry.date.formatted(.dateTime.day().month().year()))
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                Spacer()
                    .frame(height: 30)
                
                Text(selectedJournalEntry.entryTitle)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                    .frame(height: 30)
                
                Text(selectedJournalEntry.entryBody)
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                    .frame(height: 30)
                
                Image(uiImage: selectedJournalEntry.photo ?? UIImage(systemName: "face.smiling")!)
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Spacer()
                    .frame(height: 30)
                
                MapView(journalEntry: selectedJournalEntry)
                    .frame(width: 300, height: 300)
                
            }
            .padding()
            .navigationTitle("Entry Detail")
        }
    }
}

#Preview {
    NavigationView {
        JournalEntryDetailView(selectedJournalEntry: testData[0])
    }
}
