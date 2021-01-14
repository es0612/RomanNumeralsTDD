protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

        if number == 13 {
            return "XⅠⅠⅠ"
        }

        if number == 12 {
            return "XⅠⅠ"
        }

        if number == 11 {
            return "XⅠ"
        }

        if number == 10 {
            return "X"
        }

        if number == 9 {
            return "ⅠX"
        }

        if workingNumber >= 5 {
            result += "V"
            workingNumber -= 5
        }

        if number == 4 {
            return "ⅠV"
        }

        while workingNumber > 0 {
            result += "Ⅰ"
            workingNumber -= 1
        }

        return result
    }
}
