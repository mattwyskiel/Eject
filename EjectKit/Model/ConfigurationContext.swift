//
//  ConfigurationContext.swift
//  Eject
//
//  Created by Brian King on 10/26/16.
//  Copyright © 2016 Brian King. All rights reserved.
//

import Foundation

/// ConfigurationContext modifies the behavior to the KVC behavior that the XML files define
/// The document stores a configuration context which will be used when adding a variable configuration
indirect enum ConfigurationContext {

    // This will perform a normal assignment
    case assignment

    // This will assume the key refers to an array and call `.append`
    case append

    // This adds support for `forState: .normal`
    case setter(suffix: String)

    // This can over-ride the key and invoke a method with one argument instead
    case invocation(prefix: String, suffix: String)

    // Append a comment after the configuration
    case withComment(String, ConfigurationContext)

    // Inject into the object constructor
    case inject

    // Ignore the key
    case ignore
}
