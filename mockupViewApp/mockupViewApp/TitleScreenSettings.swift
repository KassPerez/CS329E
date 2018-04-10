//
//  TitleScreenSettings.swift
//  mockupViewApp
//
//  Created by Hahn, Adam W on 4/6/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//


protocol TitleSettingsProtocol {
    func adjustVolume(vol: Float)
    func effectsVolume(vol: Float)
    func playMusic(play: Bool)
}


import UIKit


class TitleScreenSettings: UIViewController {

    var delegate: TitleSettingsProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func adjustVolume(_ sender: UISlider) {
        delegate?.adjustVolume(vol: sender.value)
    }
    
    @IBAction func effectsVolume(_ sender: UISlider) {
        delegate?.effectsVolume(vol: sender.value)
    }
    
    @IBAction func playButton(_ sender: Any) {
        delegate?.playMusic(play: true)
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
