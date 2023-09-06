//
//  Track.swift
//  SurfItTestMiss
//
//  Created by Калякин Дима  on 06.09.2023.
//

import Foundation


struct Track {
    var title: String
    var artist: String
    var durations: TimeInterval
    var metadata: TrackMetadata?
}


struct TrackMetadata {
    var album: String?
    var genre: String?
    var year: Int?
    
}
