//
//  ContactsModel.swift
//  CalendarPlanner
//
//  Created by Сергей Горбачёв on 15.06.2020.
//  Copyright © 2020 Сергей Горбачёв. All rights reserved.
//

import RealmSwift

class ContactsModel: Object {
    
    @objc dynamic var contactsName = ""
    @objc dynamic var contactsPhone = ""
    @objc dynamic var contactsMail = ""
    @objc dynamic var contactsType = ""
    @objc dynamic var contactsImage: Data?
}
