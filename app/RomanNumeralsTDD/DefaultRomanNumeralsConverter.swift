protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {

    private struct RomanNumeral {
        let number: Int
        let romanLetter: String
    }

    private let romanNumerals = [
        RomanNumeral(number: 1000, romanLetter: "M"),
        RomanNumeral(number: 900, romanLetter: "CM"),
        RomanNumeral(number: 500, romanLetter: "D"),
        RomanNumeral(number: 400, romanLetter: "CD"),

        RomanNumeral(number: 100, romanLetter: "C"),
        RomanNumeral(number: 90, romanLetter: "XC"),
        RomanNumeral(number: 50, romanLetter: "L"),
        RomanNumeral(number: 40, romanLetter: "XL"),

        RomanNumeral(number: 10, romanLetter: "X"),
        RomanNumeral(number: 9, romanLetter: "IX"),
        RomanNumeral(number: 5, romanLetter: "V"),
        RomanNumeral(number: 4, romanLetter: "IV"),

        RomanNumeral(number: 1, romanLetter: "I")
    ]

    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

        romanNumerals.forEach { romanNumeral in
            while workingNumber >= romanNumeral.number {
                result += romanNumeral.romanLetter
                workingNumber -= romanNumeral.number
            }
        }

        return result
    }
}
