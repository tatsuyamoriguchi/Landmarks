//
//  Hike.swift
//  Landmarks
//
//  Created by Tatsuya Moriguchi on 1/30/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    
    var name: String
    var id: Int
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    
    
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double

        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
