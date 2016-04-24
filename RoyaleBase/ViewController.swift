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
    
    func pushData(){
        let appDeligate = UIApplication.sharedApplication().delegate as! AppDelegate;
        let managedContext = appDeligate.managedObjectContext;
        
        let entity = NSEntityDescription.entityForName("CardMeta", inManagedObjectContext: managedContext);
        let singleMeta = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext);
        
        //id, image, arena, hitspeed, speed, deploy_time, range, target, costs, count, rarity, type
        //Skeleton Army
        
        singleMeta.setValue(0, forKey: "id");
        singleMeta.setValue("", forKey: "image");
        singleMeta.setValue(1, forKey: "arena");
        singleMeta.setValue(27, forKey: "hitspeed");
        singleMeta.setValue("Fast", forKey: "speed");
        singleMeta.setValue(1, forKey: "deploy_time");
        singleMeta.setValue(0, forKey: "range");
        singleMeta.setValue("G", forKey: "target");
        singleMeta.setValue(4, forKey: "cost");
        singleMeta.setValue(0, forKey: "count");
        singleMeta.setValue("E", forKey: "rarity");
        singleMeta.setValue("U", forKey: "type");
        
        do {
            try managedContext.save();
        } catch let error as NSError {
            //, \(error.userInfo)"
            print("Could not save \(error)");
        }
        
    }
    
    func popData(model:String, id:Int16){
        let appDeligate = UIApplication.sharedApplication().delegate as! AppDelegate;
        let managedContext = appDeligate.managedObjectContext;
        
        let fetchRequest = NSFetchRequest(entityName: model);
        
        do {
            let results =
                try managedContext.executeFetchRequest(fetchRequest);
            print("data retrieved : \(results)")
        } catch let error as NSError {
            print("Could not fetch \(error)");
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Push Skeleton Army
        pushData();
        //Get Skeleton Army
        popData("CardMeta", id: 0);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

