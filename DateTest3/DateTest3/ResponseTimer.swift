//
//  ResponseTimer.swift
//  DateTest3
//
//  Created by Normand Martin on 17-08-13.
//  Copyright © 2017 Normand Martin. All rights reserved.
//

import Foundation
import UIKit

class ResponseTimer {
    var counter: Int
    let historicalData = HistoricalData()
    let labelIsDropped: Bool
    let tableView: UITableView
    let tableView1: UITableView
    init(tableView: UITableView, tableView1: UITableView, counter: Int, labelIsDropped: Bool){
        self.tableView = tableView
        self.tableView1 = tableView
        self.counter = counter
        self.labelIsDropped = labelIsDropped
    }
 
}


