//
//  ContentView.swift
//  HarryPotter'sTrivia
//
//  Created by Santiago Caraballo on 22/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome to Harry Potter's trivia!")
            .foregroundColor(Color.black).bold()
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

