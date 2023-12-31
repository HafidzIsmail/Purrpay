//
//  CreateBillView.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 16/08/23.
//

import SwiftUI

struct CreateBillView: View {
    @State private var isAddingItem = false
    @State var calculation = CreateBillViewModel()
    @State var bills = listofBill()
    @Binding var users : userActivity
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ProgressComponent(currentProgress: 2)
                    HStack{
                        Text("Expenses")
                            .foregroundColor(Color("Button"))
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()
                        Spacer()
                    }
                    
                    //List of Bills Added
                    HStack{
                        List {
                            ForEach(0..<calculation.bills.itemDescription.count, id: \.self) { item in
                                Text("\(calculation.bills.itemDescription[item])")
                            }
                        }
                        
                        List{
                            ForEach(0..<calculation.bills.itemPrice.count, id: \.self) { item in
                                Text("Rp. \(calculation.bills.itemPrice[item])")
                            }
                        }
                    }
                    
                    //Calculate Button
                    NavigationLink(destination: ResultPageView(calculation: $calculation, bills: $bills, users: $users),label: {
                        ButtonComponents(titleButton: "Calculate")
                    })
                    
                    //Form add bill
                    if isAddingItem == true {
                        Form {
                            Section(header: Text("Input Expenses")) {
                                HStack {
                                    TextField("Item", text: $calculation.description)
                                    TextField("Price", text: $calculation.price)
                                    
                                    Button(action: {
                                        calculation.addDesc()
                                        calculation.addPrice()
                                        isAddingItem = false
                                    }) {
                                        Text("Done")
                                    }
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Button"))
                                }
                                .disableAutocorrection(true)
                            }
                        }
                        .frame(height: 100)
                    }
                }
            }
            .ignoresSafeArea()
            .padding(.horizontal, 10)
            .padding(.top, 5)
            .padding(.bottom, 10)
            .background(Color("Background"))
        }
        .navigationTitle("Expense")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(PlainListStyle())
        .navigationBarItems(
            trailing:
                Button(action: {
                    isAddingItem = true
                }){
                    Image(systemName: "plus")
                        .foregroundColor(Color("Button"))
                })
    }
}
