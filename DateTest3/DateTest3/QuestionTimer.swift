//
//  Timer.swift
//  DateTest3
//
//  Created by Normand Martin on 17-08-12.
//  Copyright © 2017 Normand Martin. All rights reserved.
//

import Foundation
import UIKit

class QuestionTimer {
    var historicalData = HistoricalData()
    var counter: Int
    var isAllDatesDisplayed:Bool = false
    let tableView: UITableView
    let tableView1: UITableView
    let totalCycle: Int
    let viewController = ViewController()
    init (tableView: UITableView, tableView1: UITableView, totalCycle: Int, counter: Int) {
        self.tableView = tableView
        self.tableView1 = tableView1
        self.totalCycle = totalCycle
        self.counter = counter

    }
    func runTimedCode() -> (Bool, HistoricalData) {

        if totalCycle > 0 {
            let cellDate = tableView.cellForRow(at: [0, counter]) as! CellForTableView
            let cellEvent = tableView1.cellForRow(at: [0, counter]) as! CellForTableView
            cellDate.dateCellLabel.textColor = UIColor.blue
            cellEvent.displayGrayEventCell(cell: cellEvent)
            cellEvent.isHidden = true
 
        }else{
            isAllDatesDisplayed = true
            var n = 0
            for _ in historicalData.historicalEvent {
                let cellEvent = tableView1.cellForRow(at: [0, n]) as! CellForTableView
                cellEvent.eventCellLabel.textColor = UIColor.white
                n = n + 1
            }
            n = 0
            historicalData = historicalData.rearangeForQuiz()
            for event in historicalData.historicalEvent {
                let cellEvent = tableView1.cellForRow(at: [0, n]) as! CellForTableView
                cellEvent.isHidden = false
                cellEvent.eventCellLabel.text = event.0
                cellEvent.eventCellLabel.textColor = UIColor.blue
                n = n + 1
            }
            let cellEvent = tableView1.cellForRow(at: [0, n - 1]) as! CellForTableView
            cellEvent.displayGrayEventCell(cell: cellEvent)
            n = 0
            for _ in historicalData.historicalDate {
                if n > 4{
                    let cellDate = tableView.cellForRow(at: [0, n]) as! CellForTableView
                    cellDate.dateCellLabel?.text = ""
                }
                n = n + 1
                
            }
        }

        return (isAllDatesDisplayed, historicalData)
    }
//    func runTimerProgress(labelIsDropped: Bool) {
//        let outlet = Outlets(tableView: tableView, tableView1: tableView1)
//        counter = counter - 1
//        let timeCounter = String(counter)
//        outlet.infoDisplay.text = "Time remaining: \(timeCounter)"
//        let progress: Double = Double(counter)
//        outlet.timerProgress.progress = Float(progress)/50
//        if progress < 0 || labelIsDropped == true{
//            outlet.timerProgressBar.invalidate()
//            let finaltEvent = historicalData.historicalEvent.dropLast(4)
//            let finalDate = historicalData.historicalDate.dropLast(4)
//            var n = 0
//            var responseIsGood: Bool = false
//            for _ in finalDate {
//                if finalDate[n].1 != finaltEvent[n].1{
//                    outlet.showButton.isHidden = true
//                    outlet.showButton.isEnabled = false
//                    outlet.eliminateButton.isHidden = true
//                    outlet.eliminateButton.isEnabled = false
//                    outlet.tryAgainButton.isEnabled = true
//                    outlet.tryAgainButton.isHidden = false
//                    responseIsGood = false
//                    outlet.resultMessageLabel.text = "Sorry!"
//                    break
//                }else{
//                    responseIsGood = true
//                }
//                n = n + 1
//            }
//            if responseIsGood {
//                outlet.resultMessageLabel.text = "Well Done!"
//                for n in 0 ... 4 {
//                    let cellEvent = tableView1.cellForRow(at: [0, n]) as! CellForTableView
//                    cellEvent.displayGreenEventCell(cell: cellEvent)
//                }
//            }else{
//                for n in 0 ... 4 {
//                    let cellEvent = tableView1.cellForRow(at: [0, n]) as! CellForTableView
//                    cellEvent.displayRedEventCell(cell: cellEvent)
//                }
//                
//            }
//            for n in 5 ... 6 {
//                let cellEvent = tableView1.cellForRow(at: [0, n]) as! CellForTableView
//                cellEvent.isHidden = true
//            }
//            //longPress.isEnabled = false
//            outlet.resultMessageLabel.isEnabled = true
//            outlet.resultMessageLabel.isHidden = false
//        }
//    }
 
}
