//
//  InputActivityView.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 16/08/23.
//

import SwiftUI

struct InputActivityView: View {
    @State var users = Purrpay.userActivity()
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    ProgressComponent(currentProgress: 1)
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 210.0)
                    Spacer()
                    VStack (spacing: 20) {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Activity Name")
                                .foregroundColor(Color("Button"))
                                .multilineTextAlignment(.leading)
                                .font(.title3)
                                .fontWeight(.semibold)
                            TextField("", text: $users.activityName)
                                .padding(.horizontal)
                                .frame(height: 50.0)
                                .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                                .background(Color(.white))
                                .border(.gray)
                                .cornerRadius(15)
                        }
                            VStack (alignment: .leading, spacing: 10) {
                                Text("Total Members")
                                    .foregroundColor(Color("Button"))
                                    .multilineTextAlignment(.leading)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                TextField("", text: $users.totalMembers)
                                    .keyboardType(.decimalPad)
                                    .padding(.horizontal)
                                    .frame(height: 50.0)
                                    .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                                    .background(Color(.white))
                                    .border(.gray)
                                    .cornerRadius(15)
                            }
                        }
                    .disableAutocorrection(true)
                    Spacer()
                    
                    //Continue Button
                    NavigationLink(destination: CreateBillView(users: $users),label: {
                        ButtonComponents(titleButton: "Continue")
                    })
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Input Activity")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
            .background(Color("Background"))
        }
    }
}


struct InputActivityView_Previews: PreviewProvider {
    static var previews: some View {
        InputActivityView()
    }
}
