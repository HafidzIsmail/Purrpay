//
//  CreateBill2.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 09/04/23.
//

import SwiftUI

struct CreateBill2: View {
    @State var isPresented: Bool = false
    @Binding var priceArray : [Int]
    @Binding var descArray : [String]
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
                VStack(alignment: .leading){
                    HStack{
                        Spacer()
                            .frame(width: 275.0)
                    }
                    HStack{
                        Text("Expenses")
                            .foregroundColor(Color("ButtonColor"))
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                            .frame(width: 140.0)
                    }
                    List {
                        ForEach(0..<descArray.count, id: \.self) { item in
                            Text("\(descArray[item])")
                        }
                        ForEach(0..<priceArray.count, id: \.self) { item in
                            Text("\(priceArray[item])")
                        }
                        
                        
                        //                                                ForEach(0..<priceArray.count, id: \.self) { item in
                        //                                                    Text("\(priceArray[item])")
                        //                                                }
                        .listRowBackground(Color("BGColor"))
                    }
                    .listStyle(.plain)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color("ButtonColor"))
                    
                }
                Spacer()
                    .frame(height: 40.0)
                NavigationLink(destination: ReviewPage(), label: {
                    Text("Continue")
                })
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
                    .frame(height: 400.0)
            }
            .navigationTitle("Expenses")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 30)
            .padding(.top, 5)
            .background(Color("BGColor"))
            
            .toolbar{
                Button{
                    isPresented.toggle()
                } label: {
                    Image(systemName: "plus")
                }.sheet(isPresented: $isPresented){
                    AddExpense(isPresented: $isPresented)
                        .presentationDetents([.large])
                        .foregroundColor(Color("ButtonColor"))
                }
            }
            
        }
    }
    
    struct ListView: View {
        var body: some View{
            VStack(alignment: .leading){
                //                HStack{
                //                    VStack{
                //                        Spacer()
                //                        Text("Desc")
                //                            .font(.body)
                //                            .fontWeight(.semibold)
                //                            .foregroundColor(Color("ButtonColor"))
                //                        Spacer()
                //                        Text("Price")
                //                            .font(.body)
                //                            .foregroundColor(Color ("LightGreenFont"))
                //                        Spacer()
                //                    }
                //                    Spacer()
                //                    Image("Chevron")
                //                        .resizable()
                //                        .frame(width: 10.0, height: 15.0)
                //                }
            }
            
        }
        
    }
//    func ListPrice(){
//        ForEach(0..<priceArray.count, id: \.self) { item in
//            Text("\(priceArray[item])")
//        }
//    }
//    func ListDesc(){
//        ForEach(0..<descArray.count, id: \.self) { item in
//            Text("\(descArray[item])")
//        }
//    }
    struct CreateBill2_Previews: PreviewProvider {
        static var previews: some View {
            CreateBill2(priceArray: .constant([]), descArray: .constant([]))
        }
    }
}
