//
//  CreateBill.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 09/04/23.
//

import SwiftUI

struct CreateBill: View {
    @State var isPresented: Bool = false
    @Binding var activityName: String
    @Binding var totalMembers: String
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Text("Step")
                    Text("2").font(.subheadline).fontWeight(.bold).foregroundColor(Color("ButtonColor"))
                                        .padding(.horizontal,-3)
                    Text("of 3")
                    }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                    .fontWeight(.regular)
                Spacer()
                VStack(alignment: .center){
                    HStack{
                        Text("Hi, put your \(activityName) expenses for \(totalMembers) people here!")
                            .foregroundColor(Color("ButtonColor"))
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
                Button("Add Expense"){
                    isPresented.toggle()
                }.sheet(isPresented: $isPresented){
                    AddExpense(isPresented: $isPresented)
                        .presentationDetents([.large])
                        .foregroundColor(Color("ButtonColor"))
                }
//                Button("Add Expense") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
                .fontWeight(.bold)
                .padding(.all)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderless)
                .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.white, lineWidth: 2)
                        )
                .background(Color("ButtonColor"))
                .foregroundColor(Color("BGColor"))
                .cornerRadius(30)
                Spacer()

            }
                .navigationTitle("Expense")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 30)
                .padding(.top, 5)
                .background(Color("BGColor"))
            }

    }
}



struct CreateBill_Previews: PreviewProvider {
    static var previews: some View {
        CreateBill(activityName: .constant(""), totalMembers: .constant(""))
    }
}
