//
//  Actions.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/13/22.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
          configuration.label.foregroundColor(.black)
        }
        .padding()
        .scaleEffect(configuration.isPressed ? 0.95 : 1)
        .background(Capsule().foregroundColor(Color.white))
        .overlay(
            ButtonGradient()
        )
    }
}

struct ActionsView : View {

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
        HStack(alignment: .center){
            Button(action: edit) {
                Text("Edit")
                    .font(.caption)
            }
            .buttonStyle(MyButtonStyle())
            Spacer();
            Button(action: delete) {
                Text("Delete")
                    .font(.caption);
            }
            .buttonStyle(MyButtonStyle())
            Spacer();
            Button(action: done) {
                Text("Done")
                    .font(.caption);
            }
            .buttonStyle(MyButtonStyle())
        }
    }
    
}

struct ActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsView()
    }
}
