//
//  PrincipalView.swift
//  Instagrid
//
//  Created by MacBook DS on 19/11/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import UIKit

class PrincipalView: UIView {

    let bordure : CGFloat = 8
    var currentTag: Int?
    
    // Outlets:
    
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var topRightImageView: UIImageView!
    @IBOutlet weak var topLeftImageView: UIImageView!
    @IBOutlet weak var bottomRightImageView: UIImageView!
    @IBOutlet weak var bottomLeftImageView: UIImageView!
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bottomImage: UIImageView!
    
    
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var topCentralButton: UIButton!
    @IBOutlet weak var bottomCentralButton: UIButton!
    
    @IBOutlet var addingPhotoButtons: [UIButton]!

   
    
    // When I touch a button, the notification "addButtonTouched" is sent to the controller
    @IBAction func buttonTapped(_ sender: UIButton) {
        currentTag = sender.tag
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "addButtonTouched"), object: nil)
    }

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
        
        topRightView.isHidden = true
        topRightImageView.isHidden = true
        topLeftView.isHidden = true
        bottomView.isHidden = true
        bottomImage.isHidden = true
        bottomCentralButton.isHidden = true
        bottomRightView.isHidden = false
        bottomRightImageView.isHidden = false
        bottomLeftView.isHidden = false
        bottomLeftImageView.isHidden = false
        topRightButton.isHidden = true
        topLeftButton.isHidden = true
        topCentralButton.isHidden = false
        bottomLeftButton.isHidden = false
        bottomRightButton.isHidden = false
        bottomCentralButton.isHidden = true
        topView.isHidden = false
        topImage.isHidden = false
       
        
    }
    private func secondStyle() {
        
        topCentralButton.isHidden = true
        topView.isHidden = true
        topImage.isHidden = true
        topRightView.isHidden = false
        topRightImageView.isHidden = false
        topRightButton.isHidden = false
        topLeftView.isHidden = false
        topLeftImageView.isHidden = false
        topLeftButton.isHidden = false
        bottomView.isHidden = false
        bottomImage.isHidden = false
        bottomCentralButton.isHidden = false
        
    }
    private func thirdStyle() {
        
        topView.isHidden = true
        topImage.isHidden = true
        topCentralButton.isHidden = true
        bottomView.isHidden = true
        bottomImage.isHidden = true
        bottomCentralButton.isHidden = true
        bottomLeftView.isHidden = false
        bottomLeftImageView.isHidden = false
        bottomLeftButton.isHidden = false
        bottomRightView.isHidden = false
        bottomRightImageView.isHidden = false
        bottomRightButton.isHidden = false
        topRightView.isHidden = false
        topRightImageView.isHidden = false
        topRightButton.isHidden = false
        topLeftView.isHidden = false
        topLeftImageView.isHidden = false
        topLeftButton.isHidden = false
    
    }
    
   
}
