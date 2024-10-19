//
//  CGFloat + Ext.swift
//  Netflix
//
//  Created by Fatih Oğuz on 16.10.2024.
//

import UIKit

extension UIViewController {
    var screenWidht: CGFloat {
        return view.frame.size.width
    }
    var screenHeight: CGFloat {
        return view.frame.size.height
    }
}
extension UIView {
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}
