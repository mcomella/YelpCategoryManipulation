//
//  main.swift
//  YelpCategories
//
//  Created by Michael Comella on 2/21/17.
//  Copyright © 2017 Michael Comella. All rights reserved.
//

import Foundation

let cats = ["hotelstravel", "active", "arts", "localflavor"]

var out = Set<String>()
for cat in cats {
    out = out.union(CategoriesUtil.categoryToDescendantsMap[cat]!)
}

let s = out.joined(separator: "\n")
try! s.write(toFile: "/Users/mcomella/Downloads/categories-out.json", atomically: true, encoding: .utf8)
