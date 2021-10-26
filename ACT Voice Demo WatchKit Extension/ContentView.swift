//
//  ContentView.swift
//  ACT Voice Demo WatchKit Extension
//
//  Created by Healy Dwyer on 10/12/21.
//

import SwiftUI
import AVFoundation


struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            Text("Start a Trip")
                .font(.title)
                .fontWeight(.thin)
                .padding()
                .onTapGesture {
                let text = "Tap the microphone to say where you want to go."
                
                let utterance = AVSpeechUtterance(string: text)
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
                }
            TextField(
                    "Sample Text",
                     text: $text
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
