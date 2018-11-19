//
//  ViewController.swift
//  Instagrid
//
//  Created by MacBook DS on 06/11/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Vars:
    private var orientation = UIDevice.current.orientation
    private var swipeLabel: String!
    
    // Outlets:
    @IBOutlet weak var instagridLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func swipeLabelChange() {
        if orientation.isPortrait {
            swipeLabel = "Swipe up to \n share"
        } else { swipeLabel = "Swipe left to \n share"
        }
    }

}

