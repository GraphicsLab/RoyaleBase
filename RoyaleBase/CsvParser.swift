//
//  CsvParser.swift
//  RoyaleBase
//
//  Created by Juneyoung Oh on 4/26/16.
//  Copyright © 2016 Juneyoung Oh. All rights reserved.
//

import Foundation

class CSVParser {
    
    let delimeter = ",";
    
    func readFile (fileName: String) -> Void {
        
        let file = NSBundle.mainBundle().pathForResource(fileName, ofType: "csv");
        var text:String = String();
        do {
            text = try String(contentsOfFile: file!, encoding: NSUTF8StringEncoding)
            
        } catch let error as NSError {
            print("Error: " + error.description);
        }
        let lines:[String] = text.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet());
        
        for i in 0 ..< lines.count {
            
            if(i == 0){
                //header
            }
            
            print("text: " + lines[i]);
            let singleLine = lines[i];
            let rowData = singleLine.componentsSeparatedByString(delimeter);
            for j in 0 ..< rowData.count {
                print(rowData[j]);
            }
        }
    }
    
    func pushToModel(modelName:String){
        
    }
}