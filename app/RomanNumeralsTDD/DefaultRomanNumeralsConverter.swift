protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

        if workingNumber >= 10 {
            result += "X"
            workingNumber -= 10
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
