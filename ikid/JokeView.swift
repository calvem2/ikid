//
//  JokeView.swift
//  ikid
//
//  Created by Megan on 5/4/21.
//

import SwiftUI

struct JokeView: View {
    let joke: [String:String]
    @State private var text = ""
    
    var body: some View {
//        text = joke["setup"]!
        VStack {
            Spacer()
            Text(text)
                .onAppear {
                     text = joke["setup"]!
                 }
            Spacer()
            if (text == joke["setup"]) {
                HStack {
                    Spacer()
                    Button(action: {
                        text = joke["punchline"]!
                    }) {
                        Text("next")
                    }
                    .padding(.all)
                
                }
            }
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView(joke: ["setup": "good setup", "punchline": "good punchline"])
    }
}
