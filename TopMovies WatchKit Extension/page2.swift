//
//  page2.swift
//  TopMovies
//
//  Created by pooja on 5/7/15.
//  Copyright (c) 2015 Roadfire Software. All rights reserved.
//

import WatchKit
import Foundation

class Page2: WKInterfaceController {
    
    @IBOutlet weak var typeOfSegue: WKInterfaceLabel!
    
    
    convenience init (context){
        self.init(context: context)
        var segue = (context as NSDictionary)["segue"] as? String
        var data = (context as NSDictionary) ["data"] as? String
        self.label.setText(data)
        
        if segue == "page-based" {
            self.setTitle("Close")
        } else {
            self.setTitle("Back")
        }
    }

    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
}