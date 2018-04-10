//
//  MapController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/26/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

protocol MapLocProtocol {
    func setBG(bg: UIImage)
    func setChar(char: UIImage)
    func playSegue(fileNamed: String)
}

class MapController: UIViewController {

    var delegate: MapLocProtocol?
    
    @IBAction func libBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_library")!)
        delegate?.setChar(char: UIImage.init(named: "boy_neutral")!)
        delegate?.playSegue(fileNamed: "hit.mp3")
    }
    
    @IBAction func unionBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_union")!)
        delegate?.setChar(char: UIImage.init(named: "nonbinary_neutral")!)
        delegate?.playSegue(fileNamed: "hit.mp3")
    }
    
    @IBAction func classroomBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_classroom")!)
        delegate?.setChar(char: UIImage.init(named: "girl_neutral")!)
        delegate?.playSegue(fileNamed: "hit.mp3")
    }
    
    @IBAction func dormBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_dorm")!)
        delegate?.playSegue(fileNamed: "hit.mp3")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
