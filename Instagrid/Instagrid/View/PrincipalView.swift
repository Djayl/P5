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
        firstStyle()
        case .second:
        secondStyle()
        case .third:
        thirdStyle()
        
        }
    }
    
    private func firstStyle() {
        // afficher ce qui est nécessaire à afficher et faire disparaitre le reste
        
        topRightView.isHidden = false
        topLeftView.isHidden = false
        bottomRightView.isHidden = false
        bottomLeftView.isHidden = true
        topRightButton.isHidden = false
        topLeftButton.isHidden = false
        bottomLeftButton.isHidden = true
        bottomRightButton.isHidden = false
        bottomRightButton.center = self.bottomRightView.center
        
    }
    private func secondStyle() {
        
        topRightView.isHidden = false
        topRightButton.isHidden = false
        topLeftView.isHidden = false
        topLeftButton.isHidden = false
        bottomRightView.isHidden = false
        bottomRightButton.isHidden = false
        bottomRightButton.center = self.bottomRightView.center
        bottomLeftView.isHidden = true
        bottomLeftButton.isHidden = true
        
    }
    private func thirdStyle() {
        topLeftView.isHidden = false
        topLeftButton.isHidden = false
        topRightView.isHidden = false
        topRightButton.isHidden = false
        bottomRightView.isHidden = false
        bottomRightButton.isHidden = false
        bottomLeftView.isHidden = false
        bottomLeftButton.isHidden = false
    }
    
//    private func topRightViewStyle() {
//        topRightView.isHidden = false
//        //topRightView.frame.size.width = 135.5
//        //topRightView.frame.size.height = 135.5
//
//        //topRightImageView.frame.size.width = 135.5
//        //topRightImageView.frame.size.height = 135.5
//        topRightButton.isHidden = false
//        topRightButton.center = self.topRightView.center
//    }
//    private func topLeftViewStyle() {
//        topLeftView.isHidden = false
//        //topLeftView.frame.size.width = 135.5
//        //topLeftView.frame.size.height = 135.5
//
//        //topLeftImageView.frame.size.width = 135.5
//        //topLeftImageView.frame.size.height = 135.5
//        topLeftButton.isHidden = false
//        topLeftButton.center = self.topLeftView.center
//    }
//    private func bottomLeftViewStyle() {
//        bottomLeftView.isHidden = false
//        //bottomLeftView.frame.size.width = 135.5
//        //bottomLeftView.frame.size.height = 135.5
//
//        //bottomLeftImageView.frame.size.width = 135.5
//        //bottomLeftImageView.frame.size.height = 135.5
//        bottomLeftButton.isHidden = false
//        bottomLeftButton.center = self.bottomLeftView.center
//    }
//    private func bottomRightViewStyle() {
//        bottomRightView.isHidden = false
//        //bottomRightView.frame.size.width = 135.5
//        //bottomRightView.frame.size.height = 135.5
//
//        //bottomRightImageView.frame.size.width = 135.5
//        //bottomRightImageView.frame.size.height = 135.5
//        bottomRightButton.isHidden = false
//        bottomRightButton.center = self.bottomRightView.center
//    }
//    private func topRectangleViewStyle() {
//        topLeftView.isHidden = true
//
//        topLeftButton.isHidden = true
//        topRightView.isHidden = false
//        //topRightView.frame.size.width = 279
//        //topRightView.frame.size.height = 135.5
//
//        //topRightImageView.frame.size.width = 279
//        //topRightImageView.frame.size.height = 135.5
//        topRightButton.isHidden = false
//        topRightButton.center = self.topRightView.center
//    }
//    private func bottomRectangleViewStyle() {
//        bottomLeftView.isHidden = true
//
//        bottomLeftButton.isHidden = true
//        bottomRightView.isHidden = false
//        //bottomRightView.frame.size.width = 279
//        //bottomRightView.frame.size.height = 135.5
//
//        //bottomRightImageView.frame.size.width = 279
//        //bottomRightImageView.frame.size.height = 135.5
//        bottomRightButton.isHidden = false
//        bottomRightButton.center = self.bottomRightView.center
//
//    }
    
    
    
}
