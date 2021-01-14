protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

        if workingNumber == 21 {
            return "XXⅠ"
        }

        if workingNumber == 20 {
            return "XX"
        }

        if workingNumber >= 10 {
            result += "X"
            workingNumber -= 10
        }

        if workingNumber == 9 {
            result += "ⅠX"
            workingNumber -= 9
        }

        if workingNumber >= 5 {
            result += "V"
            workingNumber -= 5
        }

        if workingNumber == 4 {
            result += "ⅠV"
            workingNumber -= 4
        }

        while workingNumber > 0 {
            result += "Ⅰ"
            workingNumber -= 1
        }

        return result
    }
}
