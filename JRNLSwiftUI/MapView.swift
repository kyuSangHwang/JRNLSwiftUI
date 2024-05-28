//
//  MapView.swift
//  JRNLSwiftUI
//
//  Created by 황규상 on 5/28/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var journalEntry: JournalEntry
    var body: some View {
        Map(bounds: MapCameraBounds(minimumDistance: 4500, maximumDistance: 4500)) {
            Marker(journalEntry.entryTitle, coordinate: CLLocationCoordinate2D(latitude: journalEntry.latitude ?? 0.0, longitude: journalEntry.longitude ?? 0.0))
        }
//        .bounds(MapCameraBounds(minimumDistance: 4500, maximumDistance: 4500))
    }
}

#Preview {
    MapView(journalEntry: testData[0])
}
