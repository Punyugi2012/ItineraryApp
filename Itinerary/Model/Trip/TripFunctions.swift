//
//  TripFunction.swift
//  Itinerary
//
//  Created by punyawee  on 4/7/61.
//  Copyright © พ.ศ. 2561 Punyugi. All rights reserved.
//

import Foundation


class TripFunction {
    static func createTrip(tripModel: TripModel) {
        
    }
    static func readTrips() {
        if Data.tripModels.count == 0{
            Data.tripModels.append(TripModel(title: "Trip to Bali"))
            Data.tripModels.append(TripModel(title: "Mexico"))
            Data.tripModels.append(TripModel(title: "Russian Trip"))
        }
    }
    static func updateTrip(tripModel: TripModel) {
        
    }
    static func deleteTrip(tripModel: TripModel) {
        
    }
}
