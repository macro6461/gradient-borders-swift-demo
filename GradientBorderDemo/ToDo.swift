//
//  ToDo.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/11/22.
//

import SwiftUI

struct ToDo: Identifiable {
    let id: UUID
    var title: String
    var content: String
    var isDone: Bool
    
    init(id: UUID = UUID(), title: String, content: String, isDone: Bool) {
        self.id = id
        self.title = title
        self.content = content
        self.isDone = isDone
    }
}

extension ToDo {
    static var sampleData: ToDo {
            ToDo(title: "First To Do", content: "This is the first item on the To Do List", isDone: false)
    }
}
