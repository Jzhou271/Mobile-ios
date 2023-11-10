//
//  Expense.swift
//  App5
//
//  Created by Ivy Zhou on 10/3/23.
//

import Foundation
import UIKit

struct Expense{
    var title: String?
    var amount: Double?
    var type: String?
    var image: UIImage?
    
    init(title: String? = nil, amount: Double? = nil, type: String? = nil, image: UIImage) {
        self.title = title
        self.amount = amount
        self.type = type
        self.image = image
    }
}
