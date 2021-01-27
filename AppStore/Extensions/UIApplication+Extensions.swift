//
//  UIApplication+Extensions.swift
//  AppStore
//
//  Created by Tomas Hofmann on 2021-01-26.
//

import SwiftUI

extension UIApplication {
    var screenWidth: CGFloat {
        return self.windows.first?.frame.width ?? 0
    }
}
