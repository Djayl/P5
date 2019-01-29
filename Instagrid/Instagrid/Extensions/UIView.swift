//
//  UIView.swift
//  Instagrid
//
//  Created by MacBook DS on 08/01/2019.
//  Copyright © 2019 Djilali Sakkar. All rights reserved.
//

import UIKit

// For converting an object in Image
extension UIView {
    func convertToUIImage()->UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0.0)
        self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return image
    }
}
