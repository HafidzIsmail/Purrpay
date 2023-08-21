//
//  Button.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 21/08/23.
//

import SwiftUI

struct ButtonComponents: View {
    var titleButton: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(maxWidth: .infinity, maxHeight: 56)
                .foregroundColor(Color("Button"))
            Text(titleButton)
                .foregroundColor(Color("Background"))
                .fontWeight(.bold)
        }
    }
}

struct ButtonComponents_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponents(titleButton: "")
    }
}
