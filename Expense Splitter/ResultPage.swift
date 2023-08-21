//
//  ContentView.swift
//  Hangout Splitter
//
//  Created by Kholif Huda Arrasyid on 09/04/23.
//

import SwiftUI

struct ResultPage: View {
    @State private var isExpanded = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                VStack{
                    VStack(spacing: 20){
                        HStack{
                            Text("Grand Total:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("ButtonColor"))
                            Spacer()
                            Text("Rp180.000")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("ButtonColor"))
                        }
                        HStack{
                            Text("Total Member:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("ButtonColor"))
                            Spacer()
                            Text("5")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("ButtonColor"))
                        }
                        Spacer()
                    }
                }
                VStack (spacing: 20){
                    Text("Each Person Has To Pay")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ButtonColor"))
                    Text("Rp36.000")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Brown"))
                    //                    Button{
                    //                    } label: {
                    //                        Image("ChevronDown")
                    //                            .resizable()
                    //                            .frame(width: 22.0, height: 13.0)
                    //                    }.padding(.top, -10)
                    //                    Spacer()
                    VStack {
                        Button {
                            isExpanded.toggle()
                        } label: {
                            Image("ChevronDown")
                                .resizable()
                                .frame(width: 22.0, height: 13.0)
                                .rotationEffect(isExpanded ? .degrees(180) : .zero)
                        }
                        if isExpanded {
                            VStack{
                                Text("hi")
                                Text("huhu")
                            }
                        }
                        
                    }
                }
                .padding(.bottom, 50.0)
                VStack{
                    Button("Done") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
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
            }
            .navigationTitle("Amount To Pay")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 30)
            .padding(.top, 5.0)
            
            .background(Color("BGColor"))
        }
    }
    struct ResultPage_Previews: PreviewProvider {
        static var previews: some View {
            ResultPage()
        }
    }
}
