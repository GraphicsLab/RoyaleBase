//
//  CardLevel+CoreDataProperties.swift
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

extension CardLevel {

    @NSManaged var id: NSNumber?
    @NSManaged var level: NSNumber?
    @NSManaged var hits: NSNumber?
    @NSManaged var damage: NSNumber?
    @NSManaged var dps: NSNumber?
    @NSManaged var meta: CardMeta?

}
