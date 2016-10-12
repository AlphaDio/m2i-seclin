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
}
