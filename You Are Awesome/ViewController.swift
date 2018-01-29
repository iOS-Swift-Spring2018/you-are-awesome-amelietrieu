//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Amelie Trieu on 1/29/18.
//  Copyright © 2018 Amelie Trieu. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel! //Video 2.2
        var awesomePlayer = AVAudioPlayer()
        var index = -1
        var imageNumber = -1
        var soundNumber = -1
        let numberOfImages = 6
        let numberOfSounds = 4
        var soundName = ""
    
    //Code Provided by XCode:
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func playSound(soundName: String) {
        //Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            //check if sound.data is a sound file
            do {
                try awesomePlayer = AVAudioPlayer(data:
                    sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: file \(soundName) couldn't be played as a sound.")
            }
        } else {
            // if reading in the NSDataAsset didn't work, tell the user/ report the error.
            print("ERROR: file \(soundName) didn't load")
            
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue:Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while index == newIndex
        return newIndex
    }
        
        //Video 2.2
        @IBAction func showMessagePressed(_ sender: UIButton) {
            //print("The button was pressed")
            //messageLabel.text = "You Are Awesome!"
            //messageLabel.textColor = UIColor.red
            
            //Video 2.5
            //if messageLabel.text == "You Are Awesome!" {
                //messageLabel.text = "You Are Great!"
            //} else if messageLabel.text == "You Are Great!" {
                //messageLabel.text = "You Are Amazing!"
            //} else {
                //messageLabel.text = "You Are Awesome!"
            
//            let message1 = "You Are Fantastic!!!"
//            let message2 = "You Are Great!"
//            let message3 = "You Are Amazing"
//
//            if messageLabel.text == message1 {
//                messageLabel.text = message2
//            } else if messageLabel.text == message2{
//                messageLabel.text = message3
//            } else {
//                messageLabel.text = message1
//            }

            
            //Video 2.8
            var messages = ["You Are Fantastic!",
                            "You Are Great!",
                            "You Are Amazing!",
                            "When the Genius Bar needs help, they call you!",
                            "You Brighten my Day!",
                            "You Are Da Bomb!",
                            "I can't wait to use your app!"]
            var newIndex = -1
          
            //Show a message
            repeat {
                newIndex = Int(arc4random_uniform(UInt32(messages.count)))
            } while index == newIndex
            
            index = newIndex
            messageLabel.text = messages[index]
            
            //Show an image
            awesomeImage.isHidden = false 
            repeat{
                newIndex = Int(arc4random_uniform(UInt32(numberOfImages)))
            } while imageNumber == newIndex
            
            imageNumber = newIndex
            awesomeImage.image = UIImage(named: "image" + String(imageNumber))
            
            
            //Get a random number to use in our soundName file
            repeat{
                newIndex = Int(arc4random_uniform(UInt32(numberOfSounds)))
            } while soundNumber == newIndex
            
            soundNumber = newIndex
            
            //Play a sound
            let soundName = "sound\(soundNumber)"
            playSound(soundName: soundName)
            
//            messageLabel.text = messages[index]
//            index = index + 1
//             alternative writing is "index += 1"
//
//            if index == 5 {
//                index = 0
                    }
//            }
    }
    
    //Video 2.9:
    //var randomIndex =
    //Int(arc4random_uniform(UInt32(messages.count)))
    //messageLabel.text = messages[randomIndex]
    


    
   // @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        //messageLabel.text = "You Are Great!"
        //messageLabel.textColor = UIColor.blue

