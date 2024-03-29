//
//  BundleExtension.swift
//  player
//
//  Created by Warakorn T on 26/3/2567 BE.
//

import UIKit

extension Bundle {
    func instantiateViewController<T: UIViewController>(ofType viewControllerType: T.Type, fromStoryboardNamed storyboardName: String) -> T? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: self)
        return storyboard.instantiateViewController(withIdentifier: String(describing: viewControllerType)) as? T
    }
}
