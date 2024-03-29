//
//  ViewController.swift
//  player
//
//  Created by Warakorn T on 26/3/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func AVPlayerButtonTapped(_ sender: Any) {
        guard let vc = Bundle.main.instantiateViewController(ofType: PlayerViewController.self, fromStoryboardNamed: "Player") else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
        debugPrint("AVPlayerButtonTapped")
    }
    
    @IBAction func YTPlayerButtonTapped(_ sender: Any) {
        guard let vc = Bundle.main.instantiateViewController(ofType: YTPlayerViewController.self, fromStoryboardNamed: "YTPlayer") else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
        debugPrint("YTPlayerButtonTapped")
    }
}

