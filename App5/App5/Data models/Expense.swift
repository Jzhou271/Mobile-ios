//
//  Expense.swift
//  App5
//
//  Created by Ivy Zhou on 10/3/23.
//

import Foundation

struct Expense{
    var title: String?
    var amount: Double?
    var type: String?
    
    init(title: String? = nil, amount: Double? = nil, type: String? = nil) {
        self.title = title
        self.amount = amount
        self.type = type
    }
}
