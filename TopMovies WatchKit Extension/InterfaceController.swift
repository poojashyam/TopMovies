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

    @IBOutlet weak var clickToNavigate: WKInterfaceImage!
    var destinationInterfaceController: WKInterfaceController!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "hierarchical-based"{
            return ["segue": "heirarchical", "data":"passed through hierarchical navigation"]
        }
        else if segueIdentifier == "page-based"{
            return ["segue": "page-based", "data":"passed through page-based navigation"]
        }
        else {
            return ["segue":"", "data":"none"]
        }

    }

}
	