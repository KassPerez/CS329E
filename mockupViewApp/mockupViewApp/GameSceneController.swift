//
//  GameSceneController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/26/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit
import AVFoundation

class GameSceneController: UIViewController, MapLocProtocol, changeSongProtocol, TitleSettingsProtocol {
   
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var charImage: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var major: UILabel!

    var player: Player?
    var soundEffectVol:Float = 5
    var backGroundMusic = AVAudioPlayer()
    var soundEffect = AVAudioPlayer()
    var songs = ["bgGame.mp3","bgWelcome.mp3"] // songs in Music folder just need to be in here to play can be any music file type
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playMusic(songNum: 0)
//        let defaults = UserDefaults.standard
//        
//        if let savedPlayer = defaults.object(forKey: "player") as? Data {
//            player = NSKeyedUnarchiver.unarchiveObject(with: savedPlayer) as? Player
//        }
        
        self.name.text = self.player?.name
        self.major.text = self.player?.major
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? MapController {
            destinationVC.delegate = self
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }
        if let destinationVC = segue.destination as? InGameSettingsController {
            destinationVC.player = self.player
            destinationVC.delegate = self as? changeSongProtocol
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }

        playEffect(fileNamed: "hit.mp3")
    }
    
    
    // play music function
    func playMusic(songNum: Int) {
        
        let fileName = songs[songNum]
        
        let path = Bundle.main.path(forResource: fileName, ofType: nil)
        let url = URL(fileURLWithPath: path!)
        do {
            backGroundMusic = try AVAudioPlayer(contentsOf: url)
            backGroundMusic.numberOfLoops = -1
            backGroundMusic.prepareToPlay()
            backGroundMusic.play()
            
        } catch {
            //didn't work
        }
    }
    func playEffect(fileNamed: String){
        let path = Bundle.main.path(forResource: fileNamed, ofType: nil)
        let url = URL(fileURLWithPath: path!)
        do {
            soundEffect = try AVAudioPlayer(contentsOf: url)
            soundEffect.volume = soundEffectVol
            soundEffect.prepareToPlay()
            soundEffect.play()
        } catch {
            //didn't work
        }
    }
}

extension GameSceneController{
    func setBG(bg: UIImage) {
        bgImage.image = bg
    }
    
    func setChar(char: UIImage) {
        charImage.image = char
    }
    
    func playMusic(play: Bool) {
        if play {
            print("playing")
            playMusic(songNum: 0)
        }
    }
    
    func changeSong(song: Int) {
        playMusic(songNum: song)
    }
    
    func adjustVolume(vol: Float) {
        backGroundMusic.volume = vol
    }
    func playSegue(fileNamed: String) {
        playEffect(fileNamed: fileNamed)
    }
    
    func effectsVolume(vol: Float){
        soundEffectVol = vol
    }
}
