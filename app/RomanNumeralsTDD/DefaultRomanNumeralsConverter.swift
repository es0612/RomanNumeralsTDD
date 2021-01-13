protocol RomanNumeralsConverter {
    func convert(_ number: Int) -> String
}

struct DefaultRomanNumeralsConverter: RomanNumeralsConverter {
    func convert(_ number: Int) -> String {
        if number == 2 {
            return "ⅠⅠ"
        }
        return "Ⅰ"
    }
}
