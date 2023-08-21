//
//  CreateBill.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 09/04/23.
//

import SwiftUI

struct MainPage: View {
    @State var activityName: String = ""
    @State var totalMembers: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("Step")
                    Text("1").font(.subheadline).fontWeight(.bold).foregroundColor(Color("ButtonColor"))
                        .padding(.horizontal,-3)
                    Text("of 3")
                }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                    .fontWeight(.regular)
                Spacer()
                Image("NekoNew")
                    .resizable()
                    .frame(width: 210.0, height: 240.0)
                Spacer()
                VStack(alignment: .leading){
                    HStack (alignment:.center){
                        Text("Activity Name")
                            .foregroundColor(Color("ButtonColor"))
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    HStack{
                        Image("Car")
                        TextField("Activity Name", text: $activityName)
                            .padding(.leading)
                            .frame(width: 280, height: 50.0)
                            .font(.body)
                            .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                            .background(Color(.white))
                            .disableAutocorrection(true)
                            .border(.gray)
                            .cornerRadius(15)
                    }
                    HStack{
                        Text("Total Members")
                            .foregroundColor(Color("ButtonColor"))
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    HStack{
                        Image("Members")
                            .resizable()
                            .frame(width: 55.0, height: 30.0)
                        TextField("Total Members", text: $totalMembers)
                            .padding(.leading)
                            .keyboardType(.decimalPad)
                            .frame(width: 280.0, height: 50.0)
                            .font(.body)
                            .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                            .background(Color(.white))
                            .disableAutocorrection(true)
                            .border(.gray)
                            .cornerRadius(15)
                    }
                }
                Spacer()
                    .frame(height: 40.0)
                NavigationLink(destination: CreateBill(activityName: $activityName, totalMembers: $totalMembers), label: {
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
                
            }
            .navigationTitle("Input Activity")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 30)
            .padding(.top, 5)
            .background(Color("BGColor"))
        }
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
