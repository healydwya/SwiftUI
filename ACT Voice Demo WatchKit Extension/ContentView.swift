//
//  ContentView.swift
//  ACT Voice Demo WatchKit Extension
//
//  Created by Healy Dwyer on 10/12/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Start a Trip")
                .font(.title)
                .fontWeight(.thin)
                .padding()
                .onTapGesture {
                let text = "Hey Mom and Dad! I am making an apple watch talk! This is cool."
                
                let utterance = AVSpeechUtterance(string: text)
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
                }
        }.onAppear {

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
