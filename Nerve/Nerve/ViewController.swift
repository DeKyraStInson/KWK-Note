//
//  ViewController.swift
//  Nerve
//
//  Created by Apple on 8/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let pawPrint =  ["🐾": " "]
    let customImages : [UIImage] = [
        UIImage(named: "cattie.png")!,
        UIImage(named: "seal.png")!,
        UIImage(named: "polarbear.png")!,
        UIImage(named: "turtle.png")!,
        UIImage(named: "dog.png")!,
    
    ]
//    let customMessages = ["cuteAnimal" : [customImages[0], customMessages[1], customMessages[2]
//    ]]
    @IBAction func showPicture(_ sender: UIButton) {
        let selectedPawPrint = sender.titleLabel!.text
        let random = Int.random(in: 0 ..< 5)
        let animalMessage = customImages[random]
        let imgTitle = animalMessage
        let imgViewTitle = UIImageView(frame: CGRect(x: 20, y: 20, width: 60, height: 60))
        imgViewTitle.image = imgTitle
        let alertController = UIAlertController(title: pawPrint[selectedPawPrint!] , message: "     Cuddles for you! :)" , preferredStyle: UIAlertController.Style.alert)
        
        alertController.view.addSubview(imgViewTitle)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
       
    
        present(alertController, animated: true, completion: nil)
        
       


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

