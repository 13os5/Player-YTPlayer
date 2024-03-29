//
//  DateFormatter.swift
//  player
//
//  Created by Warakorn T on 27/3/2567 BE.
//

import Foundation

extension DateFormatter {
    
    static func formattedTime(seconds: Int) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: TimeInterval(seconds)) ?? "00:00"
    }
    
}
