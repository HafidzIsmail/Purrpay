//
//  AddBill.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 16/08/23.
//

import SwiftUI

class AddBillCalculation {
    @Published var description = ""
    @Published var price = ""
    @State private var isAddingItem = false
    @Published var bills = listofBill()
    
    func addDesc() {
        if description != "" {
            bills.itemDescription.append(description)
            description = ""
            price = ""

        }
        isAddingItem = false
    }
    
    func addPrice() {
        if price != "" {
            bills.itemPrice.append(Int(price)!)
            price = ""
            description = ""
        }
        isAddingItem = false
    }
}
