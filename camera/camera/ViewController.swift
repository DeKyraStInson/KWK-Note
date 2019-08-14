//
//  ViewController.swift
//  camera
//
//  Created by Apple on 8/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    var imagePicker = UIImagePickerController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var newImage: UIImageView!
    
    
    @IBAction func takeSelfie(_ sender: Any) {
        imagePicker.sourceType = .camera
        //image picture is going to access a photo from the camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func photoLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated:
            true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
  newImage.image = selectedImage }
        imagePicker.dismiss(animated: true, completion: nil)
        
        
    }
    
}

