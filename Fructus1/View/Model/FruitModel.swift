//
//  FruitModel.swift
//  Fructus1
//
//  Created by admin on 13.01.2021.
//
import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var discription: String
    var nutrition: [String]
    
    
}

