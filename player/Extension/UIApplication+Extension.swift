//
//  UIApplication+Extension.swift
//  player
//
//  Created by Warakorn T on 28/3/2567 BE.
//

import UIKit

extension UIApplication {
    class func navigationTopViewController() -> UIViewController? {
        let nav = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController
        return nav?.topViewController
    }
}
