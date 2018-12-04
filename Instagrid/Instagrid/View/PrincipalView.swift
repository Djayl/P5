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
        firstStyle()
        case .second:
        secondStyle()
        case .third:
        thirdStyle()
        
        }
    }
    
    private func firstStyle() {
        topRectangleViewStyle()
        bottomRightViewStyle()
        bottomLeftViewStyle()
        
    }
    private func secondStyle() {
        topRightViewStyle()
        topLeftViewStyle()
        bottomRectangleViewStyle()
        
    }
    private func thirdStyle() {
        topRightViewStyle()
        topLeftViewStyle()
        bottomRightViewStyle()
        bottomLeftViewStyle()
    }
    
    private func topRightViewStyle() {
        topRightView.isHidden = false
        //topRightView.frame.size.width = 135.5
        //topRightView.frame.size.height = 135.5
        topRightImageView.isHidden = false
        //topRightImageView.frame.size.width = 135.5
        //topRightImageView.frame.size.height = 135.5
        topRightButton.isHidden = false
        topRightButton.center = self.topRightView.center
    }
    private func topLeftViewStyle() {
        topLeftView.isHidden = false
        //topLeftView.frame.size.width = 135.5
        //topLeftView.frame.size.height = 135.5
        topLeftImageView.isHidden = false
        //topLeftImageView.frame.size.width = 135.5
        //topLeftImageView.frame.size.height = 135.5
        topLeftButton.isHidden = false
        topLeftButton.center = self.topLeftView.center
    }
    private func bottomLeftViewStyle() {
        bottomLeftView.isHidden = false
        //bottomLeftView.frame.size.width = 135.5
        //bottomLeftView.frame.size.height = 135.5
        bottomLeftImageView.isHidden = false
        //bottomLeftImageView.frame.size.width = 135.5
        //bottomLeftImageView.frame.size.height = 135.5
        bottomLeftButton.isHidden = false
        bottomLeftButton.center = self.bottomRightView.center
    }
    private func bottomRightViewStyle() {
        bottomRightView.isHidden = false
        //bottomRightView.frame.size.width = 135.5
        //bottomRightView.frame.size.height = 135.5
        bottomRightImageView.isHidden = false
        //bottomRightImageView.frame.size.width = 135.5
        //bottomRightImageView.frame.size.height = 135.5
        bottomRightButton.isHidden = false
        bottomRightButton.center = self.bottomRightView.center
    }
    private func topRectangleViewStyle() {
        topLeftView.isHidden = true
        topLeftImageView.isHidden = true
        topLeftButton.isHidden = true
        topRightView.isHidden = false
        //topRightView.frame.size.width = 279
        //topRightView.frame.size.height = 135.5
        topRightImageView.isHidden = false
        //topRightImageView.frame.size.width = 279
        //topRightImageView.frame.size.height = 135.5
        topRightButton.isHidden = false
        topRightButton.center = self.topRightView.center
    }
    private func bottomRectangleViewStyle() {
        bottomLeftView.isHidden = true
        bottomLeftImageView.isHidden = true
        bottomLeftButton.isHidden = true
        bottomRightView.isHidden = false
        //bottomRightView.frame.size.width = 279
        //bottomRightView.frame.size.height = 135.5
        bottomRightImageView.isHidden = false
        //bottomRightImageView.frame.size.width = 279
        //bottomRightImageView.frame.size.height = 135.5
        bottomRightButton.isHidden = false
        bottomRightButton.center = self.topRightView.center
        
    }
}
