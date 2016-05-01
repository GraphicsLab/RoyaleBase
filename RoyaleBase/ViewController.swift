//
//  ViewController.swift
//  RoyaleBase
//
//  Created by Juneyoung Oh on 4/24/16.
//  Copyright © 2016 Juneyoung Oh. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet var mvRandom: UIButton!
    @IBAction func clickRand(sender: AnyObject) {
        let randomViewController: RandomViewController = self.storyboard?.instantiateViewControllerWithIdentifier("randomViewController") as! RandomViewController;
        
        self.presentViewController(randomViewController, animated: true, completion: nil);
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let csvParser = CSVParser();
        csvParser.readFile("code", modelName: "Code");
        csvParser.readFile("cardmeta", modelName: "CardMeta");
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class RandomViewController : UIViewController {
}

