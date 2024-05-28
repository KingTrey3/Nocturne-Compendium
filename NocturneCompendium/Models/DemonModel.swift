//
//  DemonModel.swift
//  NocturneCompendium
//
//  Created by Trey Dixon on 3/13/24.
//
import Foundation

struct Demon: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let image: String
    let race: String
    let lvl: Int
    
    static var sampleDemon = Demon(name: "odin", image: "https://static.wikia.nocookie.net/megamitensei/images/3/38/00004_Odin.png/revision/latest?cb=20220525023922", race: "Deity", lvl: 65)
}
