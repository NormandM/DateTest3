//
//  HistoricalData.swift
//  DateTest3
//
//  Created by Normand Martin on 17-07-15.
//  Copyright © 2017 Normand Martin. All rights reserved.
//

import Foundation

struct  HistoricalData {
    var historicalEvent: [(String, Int)] = [("Big Bang", 0), ("Sun forms", 1), ("Earth forms", 2), ("Moon formes", 3), ("Beginning of life", 4), ("First Dinosaurs", 5), ("", 6) ]
    var historicalDate: [(String, Int)] = [("13.8", 0), ("4.6", 1), ("4.5", 2), ("4.4", 3), ("4.28", 4), ("", 5), ("", 6)]
    var sectionHeaderTable: [String] = ["Billions of Years"]
    var sectionHeaderTable1: [String] = ["Drag and drop events"]
}

extension HistoricalData {
    mutating func shuffle() {
        let countHistoricalEvent = historicalEvent.count
        if countHistoricalEvent < 2 {return}
        var i = 0
        while i < countHistoricalEvent {
            let j = Int(arc4random_uniform(UInt32(countHistoricalEvent)))
            if i != j{
                swap(&historicalEvent[i], &historicalEvent[j])
                //swap(&historicalDate[i], &historicalDate[j])
            }
            i = i + 1
        }
        
    }
    func rearangeForQuiz() -> HistoricalData{
        var historicalData = HistoricalData()
        historicalData.historicalEvent.removeLast()
        historicalData.shuffle()
        historicalData.historicalEvent.insert(("", 6), at: 0)
        return historicalData
        
    }
}
