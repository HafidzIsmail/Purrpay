//
//  UpdateExpense.swift
//  expense-splitter
//
//  Created by Putu Ayu Desi Anggara Santi on 09/04/23.
//

import SwiftUI

struct UpdateExpense: View {
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
                        .lineLimit(/*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Text("Update description for your item")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.226, green: 0.6, blue: 0.549))
                        .multilineTextAlignment(.leading)
                    HStack{
                        TextField("Item", text: .constant(""))
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
                        .lineLimit(/*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Text("Update price to your item")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.226, green: 0.6, blue: 0.549))
                        .multilineTextAlignment(.leading)
                    HStack{
                        TextField("Price", text: .constant(""))
                            .padding(.leading)
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
            .navigationTitle("Update Expense")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 30)
            .background(Color("BGColor"))
            .toolbar{
                Button("Update"){
                }
                .foregroundColor(Color("ButtonColor"))
            }
        }
    }
    
    struct UpdateExpense_Previews: PreviewProvider {
        static var previews: some View {
            UpdateExpense()
        }
    }
}
