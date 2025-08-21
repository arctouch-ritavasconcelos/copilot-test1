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
    func calculateSt(for or: Order) -> Double {
        return or.price * Double(or.quantity)
    }

    func calculatetx(for or: Order) -> Double {
        return calculateSt(for: or) * or.taxRate
    }

    func calculateTP(for or: Order) -> Double {
        return calculateSt(for: or) + calculatetx(for: or)
    }
}

