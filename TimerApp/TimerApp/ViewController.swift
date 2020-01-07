//
//  ViewController.swift
//  TimerApp
//
//  Created by camy on 2020-01-06.
//  Copyright © 2020 camy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   

    @IBOutlet weak var firstLabel: UILabel!
    var timer = 1 ;
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "\(self.timer)"
    
   
   if(self.timer > 10)
           {
               self.firstLabel.text = "OVER"
               self.dismiss(animated: false, completion: nil)
              
               
               
           }else{

    let Mytimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { Mytimer in
               self.timer += 1
               self.performSegue(withIdentifier: "firstIdentifier", sender: self)
        
               }
    
               
           }
       }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "firstIdentifier"
           {
               
               let segueDestination = segue.destination as! SecondViewController
               segueDestination.TimeVariation = self.timer
           }
           
   }
   
       


}

