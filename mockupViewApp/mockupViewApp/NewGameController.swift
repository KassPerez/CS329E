//
//  NewGameController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/28/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

class NewGameController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var major: UITextField!
    @IBOutlet weak var pronoun: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationVC = segue.destination as? GameSceneController{
            destinationVC.player = Player(_name: self.name.text!, _pronoun: "HE", _major: self.major.text!)
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }
    }
}
