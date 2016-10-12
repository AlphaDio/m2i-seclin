//
//  Place.swift
//  Places
//
//  Created by Ludovic Ollagnier on 12/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import Foundation

struct Place {

    enum Source {
        case local
        case internet

        // Exemples de méthodes et computed property dans une enum
        static var allCases: [Source] {
            return [.local, .internet]
        }

        func infos() -> (int1: Int, float1: Float, message: String) {
            switch self {
            case .local:
                return (6, 6.5, "Local")
            case .internet:
                return (7, 96.5, "Internet")
            }
        }
    }

    let name: String
    let adress: String
    let phoneNumber: String?
    let websiteURL: URL?
    let note: Float
    let numberOfReviews: Int

    let latitude: Double
    let longitude: Double

    let source: Source
}
