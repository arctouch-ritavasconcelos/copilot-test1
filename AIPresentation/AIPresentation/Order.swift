//
//  Order.swift
//  AIPresentation
//
//  Created by Rita Vasconcelos on 19/08/25.
//

import Foundation

struct Order {
    let price: Double
    let quantity: Int
}

class OrderCalculator {
    func calculateTotalPrice(for order: Order) -> Double {
        return order.price * Double(order.quantity)
    }
}
