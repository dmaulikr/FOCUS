//
//  ViewController.swift
//  FOCUS
//
//  Created by Adrien Villez on 5/2/15.
//  Copyright (c) 2015 AdrienVillez. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var quoteArray: [Quotes] = [Quotes]()

    @IBOutlet weak var focusLabel: UILabel!
    @IBOutlet weak var appSloganLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Animation to dim the app Name and Slogan.
        var duration: NSTimeInterval = 2.0
        var secondDuration: NSTimeInterval = 1.0
        UIView.animateWithDuration(duration, animations: {
            self.appSloganLabel.alpha = 0
            }, completion: {finished in
                UIView.animateWithDuration(secondDuration, animations: {
                    self.focusLabel.alpha = 0
                })
        })
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

