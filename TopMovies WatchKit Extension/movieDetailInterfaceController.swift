//
//  movieDetailInterfaceController.swift
//  TopMovies
//
//  Created by pooja on 5/7/15.
//  Copyright (c) 2015 Roadfire Software. All rights reserved.
//
import WatchKit
import Foundation

class movieDetailInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var movieLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let movieName = context as? String {
            movieLabel.setText(movieName)
            
        }
    }
}