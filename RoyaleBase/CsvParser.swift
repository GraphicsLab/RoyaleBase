//
//  CsvParser.swift
//  RoyaleBase
//
//  Created by Juneyoung Oh on 4/26/16.
//  Copyright © 2016 Juneyoung Oh. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CSVParser {
    
    let delimeter = ",";
    
    func readFile (fileName: String, modelName: String) -> Void {
        
        let file = NSBundle.mainBundle().pathForResource(fileName, ofType: "csv");
        var text:String = String();
        do {
            text = try String(contentsOfFile: file!, encoding: NSUTF8StringEncoding)
            
        } catch let error as NSError {
            print("Error: " + error.description);
        }
        let lines:[String] = text.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet());
        
        var keys = [String]();
        for i in 0 ..< lines.count {
            print("text: " + lines[i]);
            let singleLine = lines[i];
            
            let rowData = singleLine.componentsSeparatedByString(delimeter);
            
            
            if(i == 0){
                //header
                keys = rowData;
                
            }else{
                //data set
                pushToModel(modelName, keys: keys, data: rowData);
            }
        }
    }
    
    func pushToModel(modelName:String, keys:[String], data: [String]){
        let appDeligate = UIApplication.sharedApplication().delegate as! AppDelegate;
        let managedContext = appDeligate.managedObjectContext;
        
        let singleEntity = NSEntityDescription.entityForName(modelName, inManagedObjectContext: managedContext);
        let instance = NSManagedObject(entity: singleEntity!, insertIntoManagedObjectContext: managedContext);
        
        for i in 0 ..< data.count {
            print("keys [" + keys[i] + "] values [" + data[i] + "]")
            instance.setValue(data[i], forKey: keys[i])
        }
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)");
        }
    }
}