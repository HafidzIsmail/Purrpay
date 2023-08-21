//
//  AddExpense.swift
//  expense-splitter
//
//  Created by Putu Ayu Desi Anggara Santi on 09/04/23.
//

import SwiftUI

struct AddExpense: View {
    @Binding var isPresented: Bool
    @State private var descArray = [String]()
    @State var priceArray = [Int]()
    //@State private var priceToAdd = ""
    @State private var isAddingItem = false
    @State var desc: String = ""
    @State var price: String = ""
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                    .frame(width: 350.0, height: 75.0)
                VStack(alignment: .leading, spacing: 3){
                    Text("Description")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ButtonColor"))
                        .multilineTextAlignment(.leading)
                        .lineLimit(0)
                    Text("Add description for your item")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.226, green: 0.6, blue: 0.549))
                        .multilineTextAlignment(.leading)
                    HStack{
                        TextField("Item", text: $desc)
                            .padding(.leading)
                            .frame(width: 350, height: 50.0)
                            .font(.body)
                            .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                            .background(Color(.white))
                            .disableAutocorrection(true)
                            .border(.gray)
                            .cornerRadius(15)
                    }
                }
                Spacer()
                    .frame(width: 350.0, height: 20.0)
                VStack(alignment: .leading, spacing: 3){
                    Text("Price")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ButtonColor"))
                        .multilineTextAlignment(.leading)
                        .lineLimit(0)
                    Text("Add price to your item")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.226, green: 0.6, blue: 0.549))
                        .multilineTextAlignment(.leading)
                    HStack{
                        TextField("Price", text: $price)
                            .padding(.leading)
                            .keyboardType(.decimalPad)
                            .frame(width: 350, height: 50.0)
                            .font(.body)
                            .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                            .background(Color(.white))
                            .disableAutocorrection(true)
                            .border(.gray)
                            .cornerRadius(15)
                    }
                    Spacer()
                        .frame(height: 40.0)
                    Spacer()
                    Spacer()
                        .frame(width: 350.0, height: 400.0)
                }
                Spacer()
                    .frame(width: 350.0, height: 50.0)
            }
            .navigationTitle("Add Expense")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 30)
            .background(Color("BGColor"))
            .toolbar{
                NavigationLink(destination: CreateBill2(priceArray: $priceArray, descArray: $descArray)){
                    Text("Add")
                }.simultaneousGesture(TapGesture().onEnded{
                    addPrice()
                    addDesc()
                })
                .foregroundColor(Color("ButtonColor"))
            }
        }
    }
    
    func addPrice() {
        if price != "" {
            priceArray.append(Int(price)!)
            price = ""
        }
        //isAddingItem = false
    }
    
    func addDesc() {
        if desc != "" {
            descArray.append(desc)
            desc = ""
        }
        //isAddingItem = false
    }
    
    struct AddExpense_Previews: PreviewProvider {
        static var previews: some View {
            AddExpense(isPresented: .constant(false))
        }
    }
}
