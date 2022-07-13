//
//  DetialViewController.swift
//  NavigationController
//
//  Created by Ogulcan Kara on 13.07.2022.
//

import UIKit

class DetialViewController: UIViewController {

    @IBOutlet weak var detialLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func rewindButton(_ sender: Any) {
        detialLabel.text = "Rewind"
    }
    
    @IBAction func playButton(_ sender: Any) {
        detialLabel.text = "Play"
    }
    
    @IBAction func fastForwardButton(_ sender: Any) {
        detialLabel.text = "Fast Forward"
    }
    
}
