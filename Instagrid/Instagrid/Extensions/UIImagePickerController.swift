//
//  Extensions.swift
//  Instagrid
//
//  Created by MacBook DS on 07/01/2019.
//  Copyright © 2019 Djilali Sakkar. All rights reserved.
//

import UIKit

// Manages UIImagePickerController when the device is rotated
extension UIImagePickerController {
    open override var shouldAutorotate: Bool { return true}
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask { return .all}
}
