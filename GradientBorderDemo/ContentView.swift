//
//  ContentView.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/11/22.
//

import SwiftUI

struct ContentView: View {
    func alert(){
        
    }
    var body: some View {
        ToDosView(todos: ToDoList.sampleData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
