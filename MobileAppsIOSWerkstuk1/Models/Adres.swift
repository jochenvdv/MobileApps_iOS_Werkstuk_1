import Foundation

class Adres {
    var straat: String
    var huisnummer: String
    var postcode: String
    var plaats: String
    
    init() {
        straat = ""
        huisnummer = ""
        postcode = ""
        plaats = ""
    }
    
    init(straat: String, huisnummer: String, postcode: String, plaats: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.plaats = plaats
    }
}
