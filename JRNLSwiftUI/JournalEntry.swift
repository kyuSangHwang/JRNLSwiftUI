//
//  JournalEntry.swift
//  JRNLSwiftUI
//
//  Created by 황규상 on 5/28/24.
//

import UIKit

struct JournalEntry: Identifiable, Hashable {
    //MARK: - Properties
    let id = UUID()
    let date = Date()
    let entryTitle: String
    let entryBody: String
    let photo: UIImage?
    let latitude: Double?
    let longitude: Double?
}

//MARK: - Sample data
let testData = [
    JournalEntry(entryTitle: "날씨 죽인다 행배야", entryBody: "마 이 개이새꺄 마 다 했어!", photo: UIImage(systemName: "sun.max"), latitude: 37.3346, longitude: -122.0090),
    JournalEntry(entryTitle: "날씨 죽인다 행배야", entryBody: "이새끼들이 말이야", photo: UIImage(systemName: "sun.snow"), latitude: 37.3346, longitude: -122.0090),
    JournalEntry(entryTitle: "날씨 죽인다 행배야", entryBody: "개새끼들", photo: UIImage(systemName: "sunset"), latitude: 37.3346, longitude: -122.0090),
    JournalEntry(entryTitle: "날씨 죽인다 행배야", entryBody: "실례지만 어데 최씹니까?", photo: UIImage(systemName: "snowflake"), latitude: 37.3346, longitude: -122.0090)
]



