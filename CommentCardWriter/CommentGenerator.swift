//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Vereker, Luke (PRKB) on 04/02/2023.
//

import Foundation

class Comment {
    let comment: String
    
    init(comment: String) {
        self.comment = comment
    }
    
    func generateComment(happiness: Float) -> String {
        var comment = ""
        switch happiness {
        case 0...0.25:
            comment = "I hate this subject"
        case 0.25...0.5:
            comment = "I don't like this subject"
        case 0.5...0.75:
            comment = "I like this subject"
        case 0.75...1.0:
            comment = "I love this subject"
        default:
            comment = ""
        }
        return comment
    }
}
