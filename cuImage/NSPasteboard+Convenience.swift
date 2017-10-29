//
//  NSPasteboard+Convenience.swift
//  cuImage
//
//  Created by Lizhen Hu on 19/01/2017.
//  Copyright © 2017 Lizhen Hu. All rights reserved.
//

import Cocoa

extension NSPasteboard {
    /// Add URL strings to pasteboard.
    ///
    /// - Parameters:
    ///   - urlStrings: an array of URL strings.
    ///   - markdown: Make the specified URL string in markdown-style or not.
    func addURLStrings(_ urlStrings: [String], markdown: Bool) {
        let strings = markdown ? urlStrings.map { "![](\(($0 as NSString).replacingOccurrences(of: " ", with: "%20")))" } : urlStrings
        declareTypes([NSPasteboard.PasteboardType.string], owner: nil)
        writeObjects(strings as [NSString])
    }
}
