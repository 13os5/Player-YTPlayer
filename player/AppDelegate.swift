//
//  AppDelegate.swift
//  player
//
//  Created by Warakorn T on 26/3/2567 BE.
//

import UIKit
import AVKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    internal var viewControllerOrientation = 0
    static var orientationLock = UIInterfaceOrientationMask.portrait
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
    
    func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation) {
        if let topViewController = UIApplication.navigationTopViewController() {
            topViewController.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.playback, mode: .moviePlayback)
        } catch let error {
            debugPrint(error.localizedDescription)
        }
        registerNotificationCenter()
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    private func registerNotificationCenter() {
        NotificationCenter.default.addObserver(self, selector: #selector(forceRotate(notification:)), name: NSNotification.Name(rawValue: "forceRotate"), object: nil)
    }
    
    @objc func forceRotate(notification: Notification) {
        var orientation = 0
        if let index = notification.object as? Int {
            orientation = index
        }
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        switch orientation {
        case 0:
            AppDelegate.orientationLock = .portrait
            windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .portrait))
        case 1:
            AppDelegate.orientationLock = .landscapeLeft
            windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .landscapeLeft))
        case 2:
            AppDelegate.orientationLock = .landscapeRight
            windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .landscapeRight))
//        case 3:
//            AppDelegate.orientationLock = .all
//            windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .all))
        default:
            break
        }
        UIApplication.navigationTopViewController()?.setNeedsUpdateOfSupportedInterfaceOrientations()
    }

}
