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
    let taxRate: Double 
}

class OrderCalculator {
    func calculateSubtotal(for order: Order) -> Double {
        return order.price * Double(order.quantity)
    }

    func calculatetax(for order: Order) -> Double {
        return calculateSubtotal(for: order) * order.taxRate
    }

    func calculateTotalPrice(for order: Order) -> Double {
        return calculateSubtotal(for: order) + calculatetax(for: order)
    }
}
