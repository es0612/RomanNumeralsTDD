protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

        while workingNumber >= 1000 {
            result += "M"
            workingNumber -= 1000
        }

        while workingNumber >= 900 {
            result += "CM"
            workingNumber -= 900
        }
        
        while workingNumber >= 500 {
            result += "D"
            workingNumber -= 500
        }

        while workingNumber >= 400 {
            result += "CD"
            workingNumber -= 400
        }

        while workingNumber >= 100 {
            result += "C"
            workingNumber -= 100
        }

        while workingNumber >= 90 {
            result += "XC"
            workingNumber -= 90
        }

        while workingNumber >= 50 {
            result += "L"
            workingNumber -= 50
        }

        while workingNumber >= 40 {
            result += "XL"
            workingNumber -= 40
        }
        
        while workingNumber >= 10 {
            result += "X"
            workingNumber -= 10
        }

        while workingNumber >= 9 {
            result += "IX"
            workingNumber -= 9
        }

        while workingNumber >= 5 {
            result += "V"
            workingNumber -= 5
        }

        while workingNumber >= 4 {
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
