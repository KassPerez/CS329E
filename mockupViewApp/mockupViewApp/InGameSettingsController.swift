//
//  InGameSettingsController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/27/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

class InGameSettingsController: UIViewController {
    
    var player: Player?
    
    @IBAction func exitBtn(_ sender: Any) {
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        let savedData = NSKeyedArchiver.archivedData(withRootObject: player!)
        let defaults = UserDefaults.standard
        defaults.set(savedData, forKey: "player")
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
