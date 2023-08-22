//
//  Progress.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 21/08/23.
//

import SwiftUI

struct ProgressComponent: View {
    var currentProgress: Int
    
    var body: some View {
        HStack(spacing: 5){
            Text("Step")
            Text("\(currentProgress)")
                .fontWeight(.bold)
            Text("of 2")
        }
        .foregroundColor(Color("Button"))
        .font(.subheadline)
    }
}
