//
//  PrincipalView.swift
//  Instagrid
//
//  Created by MacBook DS on 19/11/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import UIKit

class PrincipalView: UIView {

    // Outlets:
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    
    @IBOutlet weak var topRightImageView: UIImageView!
    @IBOutlet weak var topLeftImageView: UIImageView!
    @IBOutlet weak var bottomRightImageView: UIImageView!
    @IBOutlet weak var bottomLeftImageView: UIImageView!

    enum Style {
        case first, second, third
        
    }
    
    var style: Style = .third {
        didSet {
            setStyle(style)
        }
    }
    
    func setStyle(_ style: Style) {
        switch style {
        case .first:
        topRightView.isHidden = true
        topLeftView.isHidden = false
        topLeftView.frame.size.width = 250
        topLeftButton.center = self.topLeftView.center
        bottomRightView.isHidden = false
        bottomLeftView.isHidden = false
        case .second:
        topRightView.isHidden = false
        topLeftView.isHidden = false
        bottomRightView.isHidden = true
        bottomLeftView.isHidden = false
        bottomLeftView.frame.size.width = 250
        bottomLeftButton.center = self.bottomLeftView.center
        case .third:
        topLeftView.isHidden = false
        topRightView.isHidden = false
        bottomLeftView.isHidden = false
        bottomRightView.isHidden = false
        }
    }
    
    
    
    
    
}
