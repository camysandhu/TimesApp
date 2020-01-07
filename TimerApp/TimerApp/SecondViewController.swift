//
//  SecondViewController.swift
//  TimerApp
//
//  Created by Camy on 2020-01-06.
//  Copyright © 2020 camy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    var TimeVariation = 0
    override func viewDidLoad() {
        super.viewDidLoad()
         secondLabel.text = "\(self.TimeVariation)"
                
                let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false)
                    
                {
                timer in
                self.TimeVariation += 1
                self.performSegue(withIdentifier: "secondIdentifier", sender: self)
                }
            
        }

            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "secondIdentifier"
                {
                    
                    let segueDestination = segue.destination as! ViewController
                    segueDestination.timer = self.TimeVariation
                    print(segueDestination.timer)
                }
                
        }
        }


        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


