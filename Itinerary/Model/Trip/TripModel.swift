//
//  TripModel.swift
//  Itinerary
//
//  Created by punyawee  on 4/7/61.
//  Copyright © พ.ศ. 2561 Punyugi. All rights reserved.
//

import Foundation

class TripModel {
    let id: UUID
    var title: String!
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
