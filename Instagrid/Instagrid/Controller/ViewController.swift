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
    @IBOutlet weak var swipeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpObserver()
        imagePicker.delegate = self
        swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeAction(_:)))
        swipeLabel.isUserInteractionEnabled = true
        swipeLabel.addGestureRecognizer(swipeGestureRecognizer!)
    }
    
    // Actions
    
    @IBAction func didTapFirstStyleButton() {
        principalView.style = .first
        firstStyleButton.setImage(UIImage(named: "Selected"), for: .normal)
        secondStyleButton.setImage(nil, for: .normal)
        thirdStyleButton.setImage(nil, for: .normal)
        
    }
    @IBAction func didTapSecondStyleButton() {
        principalView.style = .second
        secondStyleButton.setImage(UIImage(named: "Selected"), for: .normal)
        firstStyleButton.setImage(nil, for: .normal)
        thirdStyleButton.setImage(nil, for: .normal)
        
    }
    @IBAction func didTapThirdStyleButton() {
        principalView.style = .third
       thirdStyleButton.setImage(UIImage(named: "Selected"), for: .normal)
        secondStyleButton.setImage(nil, for: .normal)
        firstStyleButton.setImage(nil, for: .normal)
        
    }
    
    func setUpObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(openSourceImage), name: Notification.Name(rawValue: "addButtonTouched"), object: nil)
       
        NotificationCenter.default.addObserver(self, selector: #selector(setupSwipeDirection), name: UIDevice.orientationDidChangeNotification, object: nil)
        
    }
    
    // Direction of swipe according to orientation of screen
    @objc private func setupSwipeDirection() {
        if UIDevice.current.orientation == .landscapeLeft || UIDevice.current.orientation == .landscapeRight {
            swipeGestureRecognizer?.direction = .left
            
        } else {
            swipeGestureRecognizer?.direction = .up
        }
    }
    
    // Principal View disappears at the end of animation
    func tranformPrincipalView() {
        if UIDevice.current.orientation == .landscapeLeft || UIDevice.current.orientation == .landscapeRight {
            UIView.animate(withDuration: 2.0, animations: {
                self.principalView.transform = CGAffineTransform(translationX: -self.view.frame.width, y: 0)
            })
        } else {
            UIView.animate(withDuration: 2.0, animations: {
                self.principalView.transform = CGAffineTransform(translationX: 0, y: -self.view.frame.height)
            })
        }
    }
    
    // Sharing Principal View with other application
    func sharePrincipalView() {
        guard let image = principalView.convertToUIImage() else { return }
        let activityPrincipalView = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(activityPrincipalView, animated: true, completion: nil)
        activityPrincipalView.completionWithItemsHandler = { _ , _ , _, _ in
            UIView.animate(withDuration: 2.0, animations: {
                self.principalView.transform = .identity
            })
        }
        
    }
    
    /*func setupGestures() {
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleUpSwipe(_:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        swipeLabel.addGestureRecognizer(swipeUp)
        swipeLabel.isUserInteractionEnabled = true
    }
    
    @objc func handleUpSwipe(_ recognizer: UISwipeGestureRecognizer) {
        
        
    }*/
    
    /*@IBAction func swipeHandler(_ gestureRecognizer : UISwipeGestureRecognizer) {
        if gestureRecognizer.state == .ended {
            // Perform action.
        }
    }*/
    
    // For animating and sharing Application View
    /*@objc func swipeAction(_ sender : UISwipeGestureRecognizer) {
        tranformApplicationsView()
        sharePrincipalView()
        
    }*/
    
    @objc func swipeAction(_ sender: UISwipeGestureRecognizer) {
       
        switch principalView.style {
        case .first:
            if principalView.topImage.image != nil && principalView.bottomLeftImageView != nil && principalView.bottomRightImageView.image != nil {
                tranformPrincipalView()
                sharePrincipalView()
            }
        case .second:
            if principalView.bottomImage.image != nil && principalView.topRightImageView.image != nil && principalView.topLeftImageView.image != nil {
                tranformPrincipalView()
                sharePrincipalView()
            }
        case .third:
            if principalView.topRightImageView.image != nil && principalView.topLeftImageView.image != nil && principalView.bottomLeftImageView.image != nil && principalView.bottomRightImageView.image != nil {
                tranformPrincipalView()
                sharePrincipalView()
            }
       
        }
    }
    
    // Touch to add photo
    @objc func imageTouched(sender: UITapGestureRecognizer) {
        principalView.currentTag = sender.view?.tag
        openSourceImage()
    }
    
    
    // Select the source
    @objc func openSourceImage() {
        let alert = UIAlertController(title: "Select Photo", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            self.openCamera()
        }))
        alert.addAction(UIAlertAction(title: "Library", style: .default, handler: { _ in
            self.openLibrary()
        }))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
   
    // Select photos from the library
    func openLibrary() {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    // Use the camera to take pictures
    func openCamera() {
        if (UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera)){
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    fileprivate func convertFromUIImagePickerControllerInfoKeyDictionary(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
        return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
    }
    
   
    fileprivate func convertFromUIImagePickerControllerInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
        return input.rawValue
    }
}
    
    extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            let info = convertFromUIImagePickerControllerInfoKeyDictionary(info)
            
            guard let selectedImage = info[convertFromUIImagePickerControllerInfoKey(UIImagePickerController.InfoKey.originalImage)] as? UIImage else {return}
            
            
            let imageViews = [principalView.topLeftImageView,principalView.topImage, principalView.topRightImageView, principalView.bottomLeftImageView, principalView.bottomImage, principalView.bottomRightImageView]
            let buttons = [principalView.topLeftButton,principalView.topCentralButton,principalView.topRightButton,principalView.bottomLeftButton, principalView.bottomCentralButton,principalView.bottomRightButton]
            
            for imageView in imageViews {
                if imageView?.tag == principalView.currentTag {
                    imageView?.image = selectedImage
                    for button in buttons {
                        if button?.tag == principalView.currentTag {
                            button?.isHidden = true
                            button?.setBackgroundImage(nil, for: .normal)
                        }
                    }
                }
                
            }
            dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss(animated: true, completion: nil)
            
        }
        
}


