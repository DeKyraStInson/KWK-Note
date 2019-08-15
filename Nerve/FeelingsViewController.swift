//
//  FeelingsViewController.swift
//  Nerve
//
//  Created by Apple on 8/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class FeelingsViewController: UIViewController {
   let feelings = ["Happy" : "😁", "Sad": "🙁", "Unmotivated" : "😶", "Angry": "😡"]
    
    let customMessages = ["😁" : ["Being happy doesn't mean everything is perfect. It means you have decided to look beyond the imperfections.", "Smile, happiness looks gorgeous on you", "You can't change how people feel about you, so don't try. Just live your life and be happy", "You deserve to be happy. You deserve to live a life you are excited about. Don't let others make you forget that ", "Breathe in the Happiness...don't let it slip away!"], "🙁" : ["Be strong because it will get better. It may be stormy now but it can't rain forever.", "Take a deep breath. It's a bad day, not a bad life", "Don't be sad, even if it's too bad. Keep smiling and laughing, just to stay happy enough", "Life is short. Don't waste is being sad. Be who you are, be happy,  be free, be whatever you want to be", "To be happy you must: Let go of what's wrong, be grateful for what remains, and look forward to what's to come next"], "😶" : ["Life is not about finding yourself. Life is about creating yourself.", "Life is not about finding yourself. Life is about creating yourself.", "Discipline is doing what needs to be done even if you don't want to do it.", "Just keep going. Everybody gets better if they keep at it", "Don't downgrade your dream just to fit your reality, upgrade your conviction to match your destiny"], "😡" : ["Don't promise when you're happy. Don't reply when you're angry and do not decide when you're sad.", "You don't have to be positive all the time. It's perfectly okay to feel sad, angry, annoyed, frustrated, scared, or anxious. Having feelings doesn't make you a negative person. It makes you human", "Don't promise when you're happy. Do not reply when you're angry and do not decide when you're sad", "When you're frustrated with people, when they've made you angry, it just may be because you haven't given them enough time", "every situation doesn't need a reaction, sometimes you just have to leave people to do the things they do"]]

    @IBAction func sendMessage(_ sender: UIButton) {
        let selectedFeeling = sender.titleLabel!.text
        let random = Int.random(in: 0 ..< 5)
        let feelingsMessage = customMessages[feelings[selectedFeeling!]!]?[random]
        let alertController = UIAlertController(title: feelings[selectedFeeling!] , message: feelingsMessage , preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
