//
//  StoresModel.swift
//  HW3
//
//  Created by Sedra Asrawi on 26/08/2022.
//

import Foundation


struct Expenses: Identifiable {
    var id = UUID()
    var store : String
    var paid : String
    var profileImage : String
    var purchases : [String]
}


var srotes = [
    
    Expenses(store: "deliveroo", paid: "20.0" , profileImage: "deliveroo", purchases: ["أكل 👀","خرابيط"]),
    
    Expenses(store: "shein", paid: "80.0"  , profileImage: "shein", purchases: ["ملابس","اشياء للغرفة"]),
    
    Expenses(store: "starbucks", paid: "10.0" , profileImage: "starbucks", purchases: ["مشروبات","فطور"])
           
]
