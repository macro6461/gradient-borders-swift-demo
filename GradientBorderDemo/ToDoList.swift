//
//  ToDoList.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/11/22.
//

import SwiftUI

struct ToDoList: Identifiable {
    var id: ObjectIdentifier
    
    var title: String
    var content: String
    var isDone: Bool
}

extension ToDoList {
    static var sampleData: [ToDo] {
        [
            ToDo(title: "First To Do", content: "This is the first item on the To Do List", isDone: false),
            ToDo(title: "Second To Do", content: "This is the second item on the To Do list", isDone: true),
            ToDo(title: "Third To Do", content: "This is the third item on the To Do list", isDone: false),
        ]
    }
}
