//
//  TabInfo.swift
//  CustomTabBars
//
//  Created by Алишер Алсейт on 08.08.2021.
//

import Foundation
import SwiftUI

struct TabInfo: Identifiable {
    var id = UUID()
    var view: Tab
    var icon: String
    var name: String
}


enum Tab {
    case Home
    case Feed
    case Add
    case Account
    case Settings
}
