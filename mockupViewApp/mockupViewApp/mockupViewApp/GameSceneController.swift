//
//  GameSceneController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/26/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

class GameSceneController: UIViewController, MapLocProtocol {
   
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var charImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }
    }
}

extension GameSceneController{
    func setBG(bg: UIImage) {
        bgImage.image = bg
    }
}
