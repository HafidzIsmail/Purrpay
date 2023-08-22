//
//  SplashScreenView.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 16/08/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var drawingWidth = false
    @State private var isActive: Bool = false
    @State var Neko : String = "Neko2"
    
    var body: some View {
        ZStack {
            Color("Background")
            VStack {
                if self.isActive {
                    InputActivityView()
                } else {
                    Image(Neko)
                        .resizable()
                        .frame(maxWidth: 140, maxHeight: 160)
                        .onAppear(perform: nekoRun)
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(.systemGray6))
                        
                        RoundedRectangle(cornerRadius:5)
                            .fill(Color("Button"))
                            .frame(width: drawingWidth ? 330 : 0, alignment: .leading)
                            .animation(Animation.easeInOut(duration: 2.8).repeatForever(autoreverses: false), value: drawingWidth)
                    }
                    .padding(.leading, 20)
                    .frame(height: 12)
                    .onAppear {
                        drawingWidth.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                    
                    Text("Loading...")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 10)
        }
        .ignoresSafeArea()
    }

    //function for Animation Neko
    func nekoRun() {
        var index = 1
        _ = Timer.scheduledTimer(withTimeInterval: 0.68, repeats: true) { (Timer) in
            
            Neko = "Neko\(index)"
            
            index += 1
            
            if (index > 4) {
                index = 1
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
