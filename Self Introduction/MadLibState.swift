//
//  MadLibState.swift
//  Self Introduction
//
//  Created by Dan Esrey on 2016/08/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation

enum MadLibState {
    case noStrings
    case oneString(String)
    case twoStrings(String, String)
    
    func append(string: String) -> (succeeded: Bool, MadLibState) {
        switch self {
        case .noStrings:
            return (true, .oneString(string))
        case let .oneString(left):
            return (true, .twoStrings(left, string))
        case .twoStrings:
            return (false, self)
        }
    }
}


