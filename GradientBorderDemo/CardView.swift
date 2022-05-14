//
//  CardView.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/11/22.
//

import SwiftUI

struct CardView: View {
    let todo: ToDo
    
    func edit(){
       // edit logic
    }
    
    func delete(){
        // delete logic
    }
    
    func done(){
        // mark as done logic
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(todo.title)
                .font(.headline)
            Spacer();
            Text("Details");
            Text("\(todo.content)")
                .padding(.trailing, 20)
                .font(.caption);
            Spacer();
            Text("Status")
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing);
            Text(todo.isDone == true ? "Done" : "Not Done")
                .font(.caption)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing);
            Spacer();
            ActionsView()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .padding()
        .background(todo.isDone == true
                    ? Color(red: 0.5804, green: 0.9961, blue: 0.6784)
                    : Color(red: 1, green: 0.4471, blue: 0.4353)
        )
        .overlay(
            CardGradient()
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var todo = ToDoList.sampleData[0]
    static var previews: some View {
        CardView(todo: todo)
    }
}
