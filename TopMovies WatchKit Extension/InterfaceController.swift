//
//  InterfaceController.swift
//  TopMovies WatchKit Extension
//
//  Created by pooja on 5/7/15.
//  Copyright (c) 2015 Roadfire Software. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var movieTable: WKInterfaceTable!
    let movies = ["MovieA","MovieB","MovieC","MovieD","MovieE"]
    override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
        loadTableData()
        // Configure interface objects here.
    }
    private func loadTableData() {
        movieTable.setNumberOfRows(movies.count,withRowType:"movieTableViewController")
        for(index,movieName) in enumerate(movies){
            let row = movieTable.rowControllerAtIndex(index) as! movieTableViewController
            row.movieLabel.setText(movieName)
        }
    }
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        let movieName = movies[rowIndex]
        return movieName
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
	