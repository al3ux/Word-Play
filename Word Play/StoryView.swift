//
//  StoryView.swift
//  word play
//
//  Created by alex acevedo on 10/10/24.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
        func writeStory() -> String {
            return "The winter season has arrived with a chill in the \(words.noun0)." +
            "the leaves are falling off the tress and turning to\(words.color0) and \(words.color1)." +
            "Night time comes quicker, which usually means \(words.noun1)!" +
            "But today was a \(words.adjective0) day. my \(words.noun2) went to " +
            "the \(words.vegetable0) field. The lumberjack took us to the fields " +
            "\(words.verb) to a big \(words.adjective1) field we all go to " +
            "pick a \(words.vegetable1) that was \(words.adjective2)! Yes, night " +
            "comes quicker now that its winter but tonight my " +
            "\(words.vegetable1) sits by my \(words.noun3). Wow, what " +
            " a \(words.adjective3) day!"
        }
}

#Preview {
    StoryView(words: Words())
}
