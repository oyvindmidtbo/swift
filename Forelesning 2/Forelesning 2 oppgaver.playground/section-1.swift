// Playground - noun: a place where people can play

import UIKit


// OPPGAVE 1
// Denne funksjonen finnes ikke, så den må lages. Output skal være "WWWWW": repeatCharacter(Character("W"), 5)

func repeatCharacter(bokstav: Character, antallGanger: Int) -> String {
    var returverdi = ""
    for i in 1...antallGanger {
        returverdi += String(bokstav)
    }
    return returverdi
}

repeatCharacter(Character("W"), 5)


// OPPGAVE 2
// Lag en ny funksjon som bruker eksternt parameternavn for å tydeligegjøre hensikten med funksjonen: repeatCharacter(Character("W"), times: 5)

func repeatCharacter2(#bokstav: Character, antallGanger: Int) -> String {
    var returverdi = ""
    for i in 1...antallGanger {
        returverdi += String(bokstav)
    }
    return returverdi
}

repeatCharacter2(bokstav: Character("W"), 5)


// OPPGAVE 3
// Utvid funksjonen til å støtte default parametere. Dvs. at når times ikke oppgis, så skal den som standard settes til 1. Output her blir altså "W": repeatCharacter(Character("W"))

func repeatCharacter3(#bokstav: Character, antallGanger: Int = 1) -> String {
    var returverdi = ""
    for i in 1...antallGanger {
        returverdi += String(bokstav)
    }
    return returverdi
}

repeatCharacter3(bokstav: Character("W"))


// OPPGAVE 4
// Lag en funksjon som kan ta inn et variabelt antall parametere, og som regner ut produktet av disse:
// calculate(2, 5, 5) // --> 50
// calculate(10, 10) // --> 100

func calculate(tall: Int...) -> Int {
    var produkt = 1
    for etTall in tall {
        produkt *= etTall
    }
    return produkt
}

calculate(2, 5, 5)
calculate(10, 10)


// OPPGAVE 5
// Utvid funksjonen slik at den støtter utregning av både produkt og sum (med enum som første parameter):
// calculate(.Product, 2, 5, 5) // -> 50
// calculate(.Product, 10, 10) // -> 100
// calculate(.Sum, 2, 5, 5) // -> 12
// calculate(.Sum, 10, 10) // -> 20

enum Operasjon {
    case Product
    case Sum
}

func calculate2(typeOperator: Operasjon, tall: Int...) -> Int {
    var ret = 0

    if typeOperator == .Product {
        ret = 1
        for etTall in tall {
            ret *= etTall
        }
    } else if typeOperator == .Sum {
        for etTall in tall {
            ret += etTall
        }
    }

    return ret
}

calculate2(.Product, 2, 5, 5)
calculate2(.Product, 10, 10)
calculate2(.Sum, 2, 5, 5)
calculate2(.Sum, 10, 10)


// OPPGAVE 6
// Endre funksjonen slik at den bruker multiple return, og alltid regner ut både produkt og sum:
// let result = calculate(2, 5, 5)
// println("Produkt: \(result.product), Sum: \(result.sum)")

func calculate3(tall: Int...) -> (sum: Int, produkt: Int) {
    var produkt = 1
    var sum = 0
    
    for etTall in tall {
        produkt *= etTall
        sum += etTall
    }
    return (sum, produkt)
}

let resultat = calculate3(2, 5, 5)
println("Produkt: \(resultat.produkt), Sum: \(resultat.sum)")


// OPPGAVE 7
// Lag en funksjon getCalculator, som tar imot en operator. Dersom operatoren er gyldig (er + eller *) skal riktig regnefunksjon returneres, som igjen kan kalles for å utføre selve regneoperasjonen. Hvis operatoren ikke er støttet (altså ikke er + eller *) skal nil returneres.
// Skal kunne regne ut produkt ved å bytte ut + med *:
// if let calcFn = getCalculator("+") {
//     println(calcFn([3, 6, 9]))
// }

func getCalculator(typeOperator: String) -> (([Int]) -> Int?)? {
    func calcFn(tallArray: [Int]) -> Int? {
        if typeOperator == "+" {
            var sum = 0
            for tall in tallArray {
                sum += tall
            }
            return sum
        } else if typeOperator == "*" {
            var produkt = 1
            for tall in tallArray {
                produkt *= tall
            }
            return produkt
        } else {
            return nil
        }
    }

    if (typeOperator == "+" || typeOperator == "*") {
        return calcFn
    } else {
        return nil
    }
}

if let calcFn = getCalculator("+") {
    println(calcFn([3, 6, 9]))
}

if let calcFn = getCalculator("*") {
    println(calcFn([3, 6, 9]))
}


// OPPGAVE 8
// Lag en request-metode som tar inn en string som første parameter, og en closure som andre parameter:
// request("http://www.vg.no", { beskrivelse in
//     if beskrivelse {
//         println(beskrivelse)
//     } else {
//         println("Fant ikke noen beskrivelse")
//     }
// })
// Når URL-en er http://www.vg.no som i eksemplet, skal beskrivelsen være "Verdens gang". Dersom URL-en er http://www.aftenposten.no skal beskrivelsen være "Aftenposten". I andre tilfeller er beskrivelsen nil og Fant ikke noen beskrivelse skal skrives ut
/*
func request(url: String, beskrivelseClosure: (String -> ())) -> () {
    if url == "http://www.vg.no" {
        return beskrivelseClosure("Verdens gang")
    } else if url == "http://www.aftenposten.no" {
        return beskrivelseClosure("Aftenposten")
    } else {
        return beskrivelseClosure(nil)
    }
}

request("http://www.vg.no", { beskrivelse in
    if beskrivelse {
        println(beskrivelse)
    } else {
        println("Fant ikke noen beskrivelse")
    }
})*/


// OPPGAVE 9
// Fullfør dette programmet:
// 1. Lag en struct `Coordinate` som inneholder lat/long her

/* 2. Lag en klasse `GeoCache` som har properties for:
- Coordinate
- name
- hint
- log (en array med strenger)

Lag en `signLog` metode som legger igjen en beskjed i cacheloggen
*/

//let cache = /* instansier og populer GeoCache, eks:
//lat: 59.91126
//long: 10.76046
//name: Westerdals
//hint: Rom 81
//*/
//
//cache.signLog("Someone was here...")
//cache.signLog("I was here!")
//println(cache.description)
//
// Slik at det ender med å skrive ut:
// Westerdals
// 59.0 42.0
// Hint: Rom 81
//
// Logg:
// Someone was here...
// I was here!


struct Coordinate {
    let lat: Double
    let long: Double
    
    init(lat: Double, long: Double) {
        self.lat = lat
        self.long = long
    }
}

class GeoCache {
    let coordinate: Coordinate
    let name: String
    let hint: String
    var log = [String?]()
    
    init(coordinate: Coordinate, name: String, hint: String) {
        self.coordinate = coordinate
        self.name = name
        self.hint = hint
    }
    
    func signLog(message: String) {
        log.append(message)
    }
    
    func description() {
        println(name)
        println("\(coordinate.lat) \(coordinate.long)")
        println("Hint: \(hint)")
        for loggmelding in log {
            println("\(loggmelding)")
        }
    }
}

let coordinate = Coordinate(lat: 59.925880, long: 10.750511)
let cache = GeoCache(coordinate: coordinate, name: "Hjemme", hint: "Stua")

cache.signLog("Noen var her...")
cache.signLog("Jeg var her!")
cache.description()