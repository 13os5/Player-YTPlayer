//
//  UIDevice+Extesion.swift
//  player
//
//  Created by Warakorn T on 27/3/2567 BE.
//

import UIKit

extension UIDevice {
    static func forcePortrait() {
        if #available(iOS 16.0, *) {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "forceRotate"), object: 0)
            UIViewController.attemptRotationToDeviceOrientation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                NotificationCenter.default.post(name: UIDevice.orientationDidChangeNotification, object: nil)
            }
        } else {
            let value = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }
    
    static func forceLandscape() {
        if #available(iOS 16.0, *) {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "forceRotate"), object: 2)
            UIViewController.attemptRotationToDeviceOrientation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                NotificationCenter.default.post(name: UIDevice.orientationDidChangeNotification, object: nil)
            }
        } else {
            let value = UIInterfaceOrientation.landscapeRight.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }
    
    static func forceOrientation(type: Int) {
        if #available(iOS 16.0, *) {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "forceRotate"), object: type)
            UIViewController.attemptRotationToDeviceOrientation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                NotificationCenter.default.post(name: UIDevice.orientationDidChangeNotification, object: nil)
            }
        } else {
            let value = UIInterfaceOrientation.landscapeRight.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }
}



