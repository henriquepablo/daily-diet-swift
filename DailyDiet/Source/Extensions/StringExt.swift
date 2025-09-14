//
//  StringExt.swift
//  DailyDiet
//
//  Created by pablo henrique on 13/09/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
