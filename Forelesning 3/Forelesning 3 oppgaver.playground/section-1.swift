import Foundation

// OPPGAVE 1
// Bruk matrise stuct'en under og lag et subscript for å hente ut og sette verdier i matrisen. Verdien du skal hente ut og sette er en Double.
/*
struct Matrix {
    let rows: Int
    let columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 0] = 0
matrix[1, 0] = 1
matrix[0, 1] = 2
matrix[1, 1] = 3

matrix // prints [0.0, 2.0, 1.0, 3.0]
*/

struct Matrix {
    let rows: Int
    let columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * columns) + column]
        }
        set(newValue) {
            grid[(row * columns) + column] = newValue
        }
        
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 0] = 0
matrix[1, 0] = 1
matrix[0, 1] = 2
matrix[1, 1] = 3

matrix // prints [0.0, 2.0, 1.0, 3.0]

// OPPGAVE 2
// Svar på hvorfor kompilatoren feiler når du limer inn klassen uten kontruktør? Svar: Fordi variablene må initialiseres, de er nemlig ikke optionals eller har default verdi.
// Lag en designated konstruktør og en convenience kontruktør for denne klassen
// Lag nye instanser av klassen ved hjelp av de to kontruktørene du lagde i oppgave 2.2
/*
class Time {
    var hour: Int
    var minute: Int
    var second: Int

    var running: Bool = false
    var startedAt: NSDate?
    var stoppedAt: NSDate?
}
*/

class Time {
    var hour: Int
    var minute: Int
    var second: Int
    
    var running: Bool = false
    var startedAt: NSDate?
    var stoppedAt: NSDate?
    
    init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    convenience init() {
        self.init(hour: 0, minute: 12, second: 30)
    }
}

var time1 = Time(hour: 10, minute: 20, second: 30)
var time2 = Time()

















