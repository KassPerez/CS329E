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
}

class MapController: UIViewController {

    var delegate: MapLocProtocol?
    
    @IBAction func libBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_library")!)
    }
    
    @IBAction func unionBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_union")!)
    }
    
    @IBAction func classroomBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_library")!)
    }
    
    @IBAction func dormBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_dorm")!)
    }
    
    @IBAction func diningBtn(_ sender: Any) {
        delegate?.setBG(bg: UIImage.init(named: "BG_dining")!)
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
