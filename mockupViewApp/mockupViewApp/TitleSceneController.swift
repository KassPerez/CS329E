//
//  TitleSceneController.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 3/27/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

class TitleSceneController: UIViewController {

    @IBAction func exitBtn(_ sender: Any) {
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
