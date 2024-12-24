//
//  Animal.swift
//  SampleApIWithSolidMVVMSwiftUIApp
//
//  Created by user260588 on 12/24/24.
//

import Foundation

struct Animal: Identifiable, Codable {
    let id: String
    let url: String
    let width: Int
    let height: Int
}
