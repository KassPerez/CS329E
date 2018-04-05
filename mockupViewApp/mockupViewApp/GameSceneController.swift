//
//  GameSceneController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/26/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

class GameSceneController: UIViewController, MapLocProtocol{
   
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var charImage: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var major: UILabel!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }
    }
}

extension GameSceneController{
    func setBG(bg: UIImage) {
        bgImage.image = bg
    }
}
