//
//  Fruit.swift
//  Fructus
//
//  Created by 김동환 on 2021/06/16.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

