//
//  NavigationBarColor.swift
//  Purrpay
//
//  Created by Hafidz Ismail Hidayat on 20/08/23.
//

import Foundation
import SwiftUI

//NavigationController Helpers
extension UINavigationController{
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
        UINavigationBar.appearance().backIndicatorImage = UIImage(systemName: "chevron.backward")?.withTintColor(UIColor.black, renderingMode: .alwaysOriginal)
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(systemName: "chevron.backward")?.withTintColor(UIColor.black)
        UINavigationBar.appearance().tintColor = UIColor.systemBlue
        UIBarButtonItem.appearance().setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black
        ], for: .normal)
    }
}
