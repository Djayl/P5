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
        
        bottomLeftView.frame.size.width = self.frame.size.width-180
       
        bottomRightView.frame.size.width = self.frame.size.width-180
        
        topRightView.isHidden = true
       
        topLeftView.isHidden = false
        
        bottomRightView.isHidden = false
        
        bottomLeftView.isHidden = false
       
        topRightButton.isHidden = true
        topLeftButton.isHidden = true
        topCentralButton.isHidden = false
        bottomLeftButton.isHidden = false
        bottomRightButton.isHidden = false
        bottomCentralButton.isHidden = true
        topLeftView.frame.size.width = self.frame.size.width-bordure*2
       
        
    }
    private func secondStyle() {
        topRightView.frame.size.width = self.frame.size.width-180
        
        topRightView.isHidden = false
        
        topLeftView.frame.size.width = self.frame.size.width-180
        
        topLeftView.isHidden = false
     
        bottomRightView.isHidden = true
    
        bottomLeftView.isHidden = false
     
        topRightButton.isHidden = false
        topLeftButton.isHidden = false
        bottomLeftButton.isHidden = true
        bottomRightButton.isHidden = true
        bottomCentralButton.isHidden = false
        bottomLeftView.frame.size.width = self.frame.size.width-bordure*2
      
        topCentralButton.isHidden = true
        bottomLeftButton.center = bottomLeftView.center
        
    }
    private func thirdStyle() {
        
        topLeftView.frame.size.width = self.frame.size.width-180
       
        topRightView.frame.size.width = self.frame.size.width-180
       
        bottomRightView.frame.size.width = self.frame.size.width-180
       
        bottomLeftView.frame.size.width = self.frame.size.width-180
       
        topLeftView.isHidden = false
      
        bottomCentralButton.isHidden = true
        topCentralButton.isHidden = true
        topLeftButton.isHidden = false
        topRightView.isHidden = false
        
        topRightButton.isHidden = false
        bottomRightView.isHidden = false
     
        bottomRightButton.isHidden = false
        bottomLeftView.isHidden = false
    
        bottomLeftButton.isHidden = false
    
    }
    
   
}
