//
//  ResultPageView.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 16/08/23.
//

import SwiftUI

struct ResultPageView: View {
    @State private var isExpanded = false
    @State private var showAlert = false
    @State var navigateNext = false
    @Binding var calculation : AddBillCalculation
    @Binding var bills : listofBill
    @Binding var users : userActivity
    
    var body: some View {
        NavigationView {
            ZStack {
                let grandTotal = calculation.bills.itemPrice.reduce(0,+)
                VStack (alignment: .leading){
                    VStack(alignment: .leading, spacing: 20){
                        Text("\(users.activityName)'s Expenses")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        VStack (alignment: .leading, spacing: 10) {
                            HStack{
                                Text("Grand Total:")
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Text("Rp\(grandTotal)")
                                    .multilineTextAlignment(.trailing)
                            }
                            HStack{
                                Text("Total Member:")
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Text("\(users.totalMembers)")
                                    .multilineTextAlignment(.trailing)
                            }
                        }
                        .font(.title3)
                        .fontWeight(.semibold)

                    }
                    .foregroundColor(Color("Button"))

                    VStack (spacing: 10) {
                        Text("Each Person Has To Pay")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Button"))
                        let totalEach = grandTotal / (Int(users.totalMembers) ?? 0)!
                        Text("Rp\(totalEach)")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Brown"))
                        
                        VStack {
                            Button {
                                isExpanded.toggle()
                            } label: {
                                Image(systemName: "chevron.down")
                                    .resizable()
                                    .frame(width: 22.0, height: 13.0)
                                    .rotationEffect(isExpanded ? .degrees(180) : .zero)
                                    .foregroundColor(Color("Button"))
                            }
                            if isExpanded {
                                HStack{
                                    Spacer()
                                        .frame(width: 10.0)
                                    List {
                                        ForEach(0..<bills.itemDescription.count, id: \.self) { item in
                                            Text("\(bills.itemDescription[item]) \t \t \t \t")
                                        }
                                    }
                                    List{
                                        ForEach(0..<bills.itemPrice.count, id: \.self) { item in
                                            Text("\t Rp\((bills.itemPrice[item])/(Int(users.totalMembers) ?? 0)!)")
                                        }
                                    }
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                    }
                    .padding(.top, 40)
                }
            }
            .ignoresSafeArea()
            .padding(.horizontal, 10)
            .padding(.top, 5.0)
            .background(Color("Background"))
        }
        .navigationTitle("Amount To Pay")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct ResultPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultPageView()
//    }
//}
