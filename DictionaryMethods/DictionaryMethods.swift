//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    // Questions #1, #2, #3, #6 and #7
    var starWarsHeroes = ["Luke Skywalker","Princess Leia","Han Solo","Rey"]
    var starWarsVillains = ["Darth Vader","Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba The Hutt"]
    var starWarsCharacters: [ String : [String] ] = [:]
    // Question #4
    func addKyloRen () {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
    func remove (droid theDroidYoureLookingFor: String) -> Bool {
        for (count,myDroid) in starWarsDroids.enumerated() {
            if myDroid == theDroidYoureLookingFor {
                starWarsDroids.remove(at: count)
                return true //she's just the droid you're looking for
            }
        }
        return false //these aren't the droids you're looking for.
    }
    // Question #6
    func createStarWarsCharacters () {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    // Question #7
    func createStarWarsGangsters () {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    
    }
    // Question #8
    func description (characters: [String : [String]]) -> String {
        var result = "--Star Wars Characters--\n"
        for charType in characters {
            result.append(charType.key.uppercased()+"\n")
            for (count, myCharacter) in charType.value.enumerated() {
                result.append("\(count+1). \(myCharacter)\n")
            }
        }
        return result
    }
    // Question #9
    func addHearts () {
        for (key, value) in starWarsCharacters {
            var betterNames: [String] = []
            for myCharacter in value {
                let nameWithHearts = myCharacter.replacingOccurrences(of: "o", with: "❤️")
                betterNames.append(nameWithHearts)
            }
            starWarsCharacters.updateValue(betterNames, forKey: key)
        }
    }
}
