//
//  CardMeta+CoreDataProperties.swift
//  RoyaleBase
//
//  Created by Juneyoung Oh on 5/1/16.
//  Copyright © 2016 Juneyoung Oh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension CardMeta {

    @NSManaged var arena: NSObject?
    @NSManaged var cost: NSObject?
    @NSManaged var count: NSObject?
    @NSManaged var deploy_time: NSObject?
    @NSManaged var hitspeed: NSObject?
    @NSManaged var image: String?
    @NSManaged var range: NSObject?
    @NSManaged var rarity: String?
    @NSManaged var speed: String?
    @NSManaged var target: String?
    @NSManaged var type: String?
    @NSManaged var spawn_speed: NSObject?
    @NSManaged var id: NSObject?
    @NSManaged var details: NSSet?
    @NSManaged var levels: NSSet?

}
