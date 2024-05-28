//
//  JournalEntry.swift
//  JRNLSwiftUI
//
//  Created by 황규상 on 5/28/24.
//

import UIKit

struct JournalEntry: Identifiable {
    //MARK: - Properties
    let id = UUID()
    let date = Date()
    let entryTitle: String
    let photo: UIImage?
}

//MARK: - Sample data
let testData = [
    JournalEntry(entryTitle: "날씨 죽인다 행배야", photo: UIImage(systemName: "sun.max")),
    JournalEntry(entryTitle: "날씨 죽인다 행배야", photo: UIImage(systemName: "sun.snow")),
    JournalEntry(entryTitle: "날씨 죽인다 행배야", photo: UIImage(systemName: "sunset")),
    JournalEntry(entryTitle: "날씨 죽인다 행배야", photo: UIImage(systemName: "snowflake"))
]



