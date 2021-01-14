protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

        if workingNumber >= 100 {
            result += "C"
            workingNumber -= 100
        }

        if workingNumber >= 90 {
            result += "XC"
            workingNumber -= 90
        }

        if workingNumber >= 50 {
            result += "L"
            workingNumber -= 50
        }

        if workingNumber >= 40 {
            result += "XL"
            workingNumber -= 40
        }
        
        while workingNumber >= 10 {
            result += "X"
            workingNumber -= 10
        }

        if workingNumber >= 9 {
            result += "IX"
            workingNumber -= 9
        }

        if workingNumber >= 5 {
            result += "V"
            workingNumber -= 5
        }

        if workingNumber >= 4 {
            result += "IV"
            workingNumber -= 4
        }

        while workingNumber > 0 {
            result += "I"
            workingNumber -= 1
        }

        return result
    }
}
