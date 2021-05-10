//
//  Pokemon.swift
//  PokeDex
//
//  Created by Abheek Das on 09/05/21.
//

import Foundation


struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name : String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON:[Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "posion"),
    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "posion"),
    .init(id: 2, name: "Venusaur", imageUrl: "1", type: "posion"),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "fire"),
    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "fire"),
    .init(id: 0, name: "Charlizard", imageUrl: "1", type: "fire")
]

