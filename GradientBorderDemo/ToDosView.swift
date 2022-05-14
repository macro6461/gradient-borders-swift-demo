//
//  ToDosView.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/11/22.
//

import SwiftUI

struct ToDosView: View {
    let todos: [ToDo]
    
    var body: some View {
        List {
            ForEach(todos, id: \.title) { todo in
                CardView(todo: todo)
            }
        }
    }
}

struct ToDosView_Previews: PreviewProvider {
    static var previews: some View {
        ToDosView(todos: ToDoList.sampleData)
    }
}
