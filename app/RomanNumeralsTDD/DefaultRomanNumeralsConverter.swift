protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        var workingNumber = number
        var result = ""

//        if number == 8 {
//            return "VⅠⅠⅠ"
//        }
//
//        if number == 7 {
//            return "VⅠⅠ"
//        }
//
//        if number == 6 {
//            return "VⅠ"
//        }
//
//        if number == 5 {
//            return "V"
//        }

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
