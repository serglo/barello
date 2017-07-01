//
//  ViewController.swift
//  Barello2
//
//  Created by Sergej Lotz on 05/11/16.
//  Copyright © 2016 Sergej Lotz. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var backgroundMusicPlayer = AVAudioPlayer()
    
    func playBackgroundMusic(filename: String) {
        let url = Bundle.main.path(forResource: filename, ofType: "mp3")
        do {
            //if backgroundMusicPlayer.isPlaying {
              //  backgroundMusicPlayer.pause()
            //}
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url! ))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.currentTime = 0
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //this runs the do try statement
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play1(_ sender: AnyObject) {
        playBackgroundMusic(filename: "kassa")
    }
    @IBAction func play2(_ sender: AnyObject) {
        playBackgroundMusic(filename: "police")
    }
    //@IBAction func stop(_ sender: AnyObject) {
    //    audioPlayer.stop()
    //}
    


}

