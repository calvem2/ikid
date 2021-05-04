//
//  ContentView.swift
//  ikid
//
//  Created by Megan on 5/4/21.
//

import SwiftUI

struct ContentView: View {
    let jokes = [
        "good": ["setup": "why did the chicken cross the road",
                 "punchline":"because the chicken behind it didn't know how to properly socially distance"],
        "pun": ["setup": "I drove my expensive new car into a tree",
                "punchline": "and now I know how a Mercedes bends :("],
        "dad": ["setup": "what's whitney houston's favorite type of coordination",
                "punchline": "hand eeeyyyeee"]
    ]
    var body: some View {
        VStack {
            Text("ikid")
                .font(.title)
                .foregroundColor(Color.blue)
                .padding(.top)
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                JokeView(joke: jokes["good"]!)
                    .tabItem {
                        Label("Good Joke", systemImage: "hand.thumbsup")
                    }
                JokeView(joke: jokes["pun"]!)
                    .tabItem {
                        Label("Pun", systemImage: "smiley")
                    }
                JokeView(joke: jokes["dad"]!)
                    .tabItem {
                        Label("Dad Joke", systemImage: "trash")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
