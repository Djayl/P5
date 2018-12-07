//
//  ViewController.swift
//  Instagrid
//
//  Created by MacBook DS on 06/11/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Vars
    private let imagePicker = UIImagePickerController()
    private var orientation = UIDevice.current.orientation
    private var swipeGestureRecognizer: UISwipeGestureRecognizer?
    
    // Outlets
    @IBOutlet weak var firstStyleButton: UIButton!
    @IBOutlet weak var secondStyleButton: UIButton!
    @IBOutlet weak var thirdStyleButton: UIButton!
    @IBOutlet weak var principalView: PrincipalView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Actions
    
    @IBAction func didTapFirstStyleButton() {
        principalView.style = .first
        buttonSelected()
    }
    @IBAction func didTapSecondStyleButton() {
        principalView.style = .second
        buttonSelected()
    }
    @IBAction func didTapThirdStyleButton() {
        principalView.style = .third
        buttonSelected()
    }
    
    private func buttonSelected() {
        if firstStyleButton.isSelected {
            firstStyleButton.backgroundImage(for: .normal)
        }
        else if secondStyleButton.isSelected {
            secondStyleButton.backgroundColor = UIColor(patternImage: UIImage(named: "Selected")!)
        }
        else {
            thirdStyleButton.backgroundColor = UIColor(patternImage: UIImage(named: "Selected")!)
    }
        
    
    }
}

