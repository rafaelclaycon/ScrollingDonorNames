//
//  Donor.swift
//  ScrollingDonorNames
//
//  Created by Rafael Schmitt on 14/04/23.
//

import Foundation

struct Donor {
    
    let name: String
    let isRepeatDonor: Bool
    
    init(name: String, isRecurringDonor: Bool = false) {
        self.name = name
        self.isRepeatDonor = isRecurringDonor
    }
}
