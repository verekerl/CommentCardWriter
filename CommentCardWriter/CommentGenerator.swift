//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Vereker, Luke (PRKB) on 04/02/2023.
//

import Foundation

class CommentGenerator {
    
    func generateComment(happiness: Double) -> String {
        var comment = ""
        switch happiness {
        case 0...2.5:
            comment = "I hate this subject"
        case 2.5...5.0:
            comment = "I don't like this subject"
        case 5.0...7.5:
            comment = "I like this subject"
        case 7.5...10.0:
            comment = "I love this subject"
        default:
            comment = "yufuy"
        }
        return comment
    }
}
