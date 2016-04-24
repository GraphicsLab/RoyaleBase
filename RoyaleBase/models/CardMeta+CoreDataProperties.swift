//
//  CardMeta+CoreDataProperties.swift
//  RoyaleBase
//
//  Created by Juneyoung Oh on 4/24/16.
//  Copyright © 2016 Juneyoung Oh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension CardMeta {

    @NSManaged var arena: NSNumber?
    @NSManaged var rarity: String?
    @NSManaged var type: String?
    @NSManaged var image: String?
    @NSManaged var cost: NSNumber?
    @NSManaged var id: NSNumber?
    @NSManaged var hitspeed: NSNumber?
    @NSManaged var speed: String?
    @NSManaged var deploy_time: NSNumber?
    @NSManaged var range: NSNumber?
    @NSManaged var target: String?
    @NSManaged var count: NSNumber?
    @NSManaged var levels: NSSet?
    @NSManaged var details: NSSet?

}
