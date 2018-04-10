//
//  InGameSettingsController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/27/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

protocol changeSongProtocol {
    func changeSong(song: Int)
    func adjustVolume(vol: Float)
    func effectsVolume(vol: Float)
    func playSegue(fileNamed: String)
}

import UIKit

class InGameSettingsController: UIViewController {
    
    var player: Player?
    
    var delegate: changeSongProtocol?
    
    var songNumLimit = 1  // Number of songs in the GSC songs array - 1
    var songNow = 1
    
    @IBAction func loadBtn(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        if let savedPlayer = defaults.object(forKey: "player") as? Data {
            player = NSKeyedUnarchiver.unarchiveObject(with: savedPlayer) as? Player
        }
    }
    
    @IBAction func exitBtn(_ sender: Any) {
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
        delegate?.playSegue(fileNamed: "hit.mp3")
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        let savedData = NSKeyedArchiver.archivedData(withRootObject: player!)
        let defaults = UserDefaults.standard
        defaults.set(savedData, forKey: "player")
        delegate?.playSegue(fileNamed: "hit.mp3")
        
    }

    @IBAction func effectsVolume(_ sender: UISlider) {
        delegate?.effectsVolume(vol: sender.value)
    }
    
    @IBAction func adjustVolume(_ sender: UISlider) {
        delegate?.adjustVolume(vol: sender.value)
    }
    
    
    @IBAction func changeSong(_ sender: Any) {
        
        delegate?.changeSong(song: songNow)
        if songNow == songNumLimit {
            songNow = 0
        } else {
            songNow += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
