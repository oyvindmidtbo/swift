// Playground - noun: a place where people can play

import UIKit


// OPPGAVE 1
// Definer en konstant med “Swift er fett!”.
// Forsøk å sette verdien til noe annet.
// Hvorfor fikk du feilmelding nå?
// Endre koden slik at du kan endre verdien uten å få feilmelding.

// Original streng
// let oppgave1_streng = "Swift er fett!"

var oppgave1_streng = "Swift er fett!"
oppgave1_streng = "Hei"


// OPPGAVE 2
// Lag en konstant med en eksplisitt String type og verdien “iOS FTW” - Fjern deretter typen. Hvorfor er dette mulig?

// Original streng
// var oppgave2_streng: String = "iOS FTW"

var oppgave2_streng = "iOS FTW"


// OPPGAVE 3
// Lag en numerisk konstant og en strengkonstant. Lag deretter en konstant som innholder begge. Gjennomfør dette både med stringinterpolering og uten.

let oppgave3_streng1: String = "Tallet er"
let oppgave3_tall: Int = 1
let oppgave3_streng2 = "\(oppgave3_streng1) \(oppgave3_tall)"
let oppgave3_streng3 = oppgave3_streng1 + " " + String(oppgave3_tall)


// OPPGAVE 4
// Lag et utrykk med stringinterpolering der du regner ut summen av 5 * 120 som en del av interpoleringen, skriv dette ut ved hjelp av println.

println("Summen er \(5 * 120)")


// OPPGAVE 5
// Sammenlign to strenger og print “De er like” om de er helt like, eller “De er forskjellige” om de er ulike.

let oppgave5_streng1 = "Dette er en tekst."
let oppgave5_streng2 = "Dette er en tekst."
let oppgave5_streng3 = "Dette er en fin tekst."

if oppgave5_streng1 == oppgave5_streng2 {
    println("De er like.")
} else {
    println("De er forskjellige.")
}

if oppgave5_streng1 == oppgave5_streng3 {
    println("De er like.")
} else {
    println("De er forskjellige.")
}


// OPPGAVE 6
// Lag en tuple med innholdet (5600, “iOS-programmering”). Bruk deretter println for å skrive ut “PG5600 - iOS-programmering”

let oppgave6_verdier = (5600, "iOS-programmering")
println("PG\(oppgave6_verdier.0) - \(oppgave6_verdier.1)")


// OPPGAVE 7
// Lag en loop der du skriver ut hvert ord i en array på egen linje Lag deretter en loop som printer ut hver enkelt bokstav i hvert ord på en ny linje.

let oppgave7_array = ["Abba", "Dabba", "Du"]

for ord in oppgave7_array {
    println(ord)
    for character in ord {
        println(character)
    }
}


// OPPGAVE 8
// Lag en dictionary med 5 key-value-par, loop over den og skriv ut key og value med println.

let oppgave8_dictionary = [
    "Norge": "Oslo",
    "Sverige": "Stockholm",
    "Danmark": "København",
    "Finland": "Helsinki",
    "Tyskland": "Berlin"
]

for (land, by) in oppgave8_dictionary {
    println("\(by) er hovedstaden i \(land)")
}


// OPPGAVE 9
// Lag et nytt iOS-prosjekt i Xcode av typen “Single View Application”.
// 1. Finn det stedet som kalles når applikasjonen starter opp.
// 2. Definer opp strengkonstanter for title, beskjed og knapp.
// 3. Lag et UIAlertView-objekt som bruker konstantene du har definert.
// 4. Kall en metode .show på alert view-instansen.
// 5. Kjør simulatoren og verifiser at tekststrengen dukker opp.


// OPPGAVE 10
// Print slik at det blir følgende utskrift:
// apple
//     l
//     p
//     p
//     a
// oranges
//       e
//       g
//       n
//       a
//       r
//       o
// banana
//      n
//      a
//      n
//      a
//      b

let words = ["apple", "organges", "banana"]

for word in words {
    println(word)
    for character in reverse(word) {
        println(character)
    }
}



















