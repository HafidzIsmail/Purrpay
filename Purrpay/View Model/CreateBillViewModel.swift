//
//  AddBill.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 16/08/23.
//

import SwiftUI

class CreateBillViewModel {
    @Published var description = ""
    @Published var price = ""
    @State private var isAddingItem = false
    @Published var bills = listofBill()
    
    func addDesc() {
        if description != "" {
            bills.itemDescription.append(description)
            description = ""
        }
        isAddingItem = false
    }
    
    func addPrice() {
        if price != "" {
            bills.itemPrice.append(Int(price)!)
            price = ""
        }
        isAddingItem = false
    }
}
