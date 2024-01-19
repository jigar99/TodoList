//
//  ItemModel.swift
//  TodoList
//
//  Created by Jigar on 1/18/24.
//

import Foundation

struct ItemModel : Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id : String
    
    init(id : String =  UUID().uuidString ,title: String, isCompleted: Bool) {
        
        self.id = id
        self.isCompleted = isCompleted
        self.title = title
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
    
}
