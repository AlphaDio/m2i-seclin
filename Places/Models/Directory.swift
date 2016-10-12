//
//  Directory.swift
//  Places
//
//  Created by Ludovic Ollagnier on 12/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

class Directory {

    static let instance = Directory()

    private var places: [Place]

    var allPlaces: [Place] {
        return places
    }

    private init() {
        places = []
        generateDemoData()
    }

    func add(_ place: Place) {
        guard !places.contains(place) else {
            return
        }
        places.append(place)
    }

    func remove(_ place: Place) {
        guard let index = places.index(of: place) else {
            return
        }
        places.remove(at: index)
    }

    private func generateDemoData() {
        let place = Place(name: "First", adress: "Adress first", phoneNumber: "0689986575", websiteURL: nil, note: 2.5, numberOfReviews: 1, latitude: 0.0, longitude: 0.0, source: .internet)
        add(place)
        for i in 0...99 {
            let place = Place(name: "Resto \(i)", adress: "Adress \(i)", phoneNumber: "06899865\(i)", websiteURL: nil, note: 2.5, numberOfReviews: 1, latitude: 0.0, longitude: 0.0, source: .local)
            add(place)
        }
    }
}
